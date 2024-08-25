import 'package:injectable/injectable.dart';
import 'package:restaurant/base/result/result.dart';
import 'package:restaurant/features/table_reservation/data/remote/data_sources/table_remote_data_source.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';
import 'package:restaurant/features/table_reservation/domain/repository/table_repository.dart';

@LazySingleton(as: TableRepository)
class TableRepositoryImpl implements TableRepository {
  final TableRemoteDataSource remoteDataSource;

  TableRepositoryImpl(this.remoteDataSource);

  @override
  Future<CustomResult<List<TableEntity>>> getTablesForDate(
      DateTime date) async {
    return remoteDataSource.getTables().map((tables) {
      return tables
          .map((table) => TableEntity(
                id: table.id,
                name: table.name,
                chairs: table.chairs,
                status: 'available',
              ))
          .toList();
    });
  }

  @override
  Future<CustomResult<Object>> reserveTable(
      String tableId, String username, DateTime date) {
    // TODO: implement reserveTable
    throw UnimplementedError();
  }

  @override
  Future<CustomResult<Object>> cancelReservation(String reservationId) {
    // TODO: implement cancelReservation
    throw UnimplementedError();
  }
}
