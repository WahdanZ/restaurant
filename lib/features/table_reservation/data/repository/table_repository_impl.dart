import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:restaurant/base/error/index.dart';
import 'package:restaurant/base/result/result.dart';
import 'package:restaurant/features/auth/domain/entities/app_user.dart';
import 'package:restaurant/features/auth/domain/repositories/user_repository.dart';
import 'package:restaurant/features/table_reservation/data/remote/data_sources/table_remote_data_source.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/reservation_model.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/table_model.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';
import 'package:restaurant/features/table_reservation/domain/repository/table_repository.dart';

@LazySingleton(as: TableRepository)
class TableRepositoryImpl implements TableRepository {
  final UserRepository userRepository;
  final TableRemoteDataSource remoteDataSource;

  TableRepositoryImpl(this.remoteDataSource, this.userRepository);

  @override
  Future<CustomResult<List<TableEntity>>> getTablesForDate(
      DateTime date) async {
    try {
      final currentUser = await _getCurrentUser();
      final reservations = await _getReservationsForDate(date);
      final tables = await _getTables();
      if (tables.isFailure) {
        return CustomResult.failure(tables.getErrorOrNull()!);
      }

      return CustomResult.success(
          _mapTablesToEntities(tables.getOrNull()!, reservations, currentUser));
    } catch (e) {
      return CustomResult.failure(
          const NetworkFailure.api(message: 'Failed to get tables'));
    }
  }

  Future<CustomResult<List<TableModel>>> _getTables() async {
    final tablesResult = await remoteDataSource.getTables();
    return tablesResult;
  }

  Future<List<ReservationModel>> _getReservationsForDate(DateTime date) async {
    final reservationsResult =
        await remoteDataSource.getReservationsForTableAndTime(
      startTime: date,
      endTime: date.add(const Duration(hours: 1)),
    );
    return reservationsResult.getOrNull() ?? [];
  }

  List<TableEntity> _mapTablesToEntities(
    List<TableModel> tables,
    List<ReservationModel> reservations,
    AppUser currentUser,
  ) {
    return tables.map((table) {
      final tableStatus =
          _determineTableStatus(table, reservations, currentUser);
      final reservationId =
          _getReservationIdForCurrentUser(table, reservations, currentUser);

      return TableEntity(
        id: table.id,
        name: table.name,
        chairs: table.chairs,
        status: tableStatus,
        reservationId: reservationId,
      );
    }).toList();
  }

  String? _getReservationIdForCurrentUser(
    TableModel table,
    List<ReservationModel> reservations,
    AppUser currentUser,
  ) {
    return reservations
        .where(
          (res) => res.tableId == table.id && res.userId == currentUser.uid,
        )
        .firstOrNull
        ?.id;
  }

  TableStatus _determineTableStatus(
    TableModel table,
    List<ReservationModel> reservations,
    AppUser currentUser,
  ) {
    final tableReservations =
        reservations.where((res) => res.tableId == table.id).toList();

    if (tableReservations.isEmpty) return TableStatus.available;
    if (tableReservations.any((res) => res.userId == currentUser.uid)) {
      return TableStatus.reservedByMe;
    }

    return TableStatus.reserved;
  }

  @override
  Future<CustomResult<bool>> reserveTable(
    String tableId,
    String username,
    DateTime date,
  ) async {
    try {
      final user = await _getCurrentUser();
      final result = await remoteDataSource
          .reserveTable(
            tableId: tableId,
            userId: user.uid,
            username: username,
            startDate: date,
            endDate: date.add(const Duration(hours: 1)),
          )
          .map((value) => true);
      return result;
    } catch (e) {
      return CustomResult.failure(
          const NetworkFailure.api(message: 'Failed to reserve table '));
    }
  }

  @override
  Future<CustomResult<bool>> cancelReservation(String reservationId) async {
    try {
      await remoteDataSource.cancelReservation(reservationId);
      return CustomResult.success(true);
    } catch (e) {
      return CustomResult.failure(
          const NetworkFailure.api(message: 'Failed to cancel reservation'));
    }
  }

  Future<AppUser> _getCurrentUser() async {
    final user = (await userRepository.getCurrentUser()).getOrNull() ??
        (await userRepository.signInAnonymously()).getOrNull();

    if (user == null) {
      throw const NetworkFailure.unAuthorized(
          message: 'No user is currently signed in.');
    }
    return user;
  }
}
