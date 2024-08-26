import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/auth/domain/entities/app_user.dart';
import 'package:restaurant/features/auth/domain/repositories/user_repository.dart';
import 'package:restaurant/features/table_reservation/data/remote/data_sources/table_remote_data_source.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/reservation_model.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/table_model.dart';
import 'package:restaurant/features/table_reservation/data/repository/table_repository_impl.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';

class MockTableRemoteDataSource extends Mock implements TableRemoteDataSource {}

class MockUserRepository extends Mock implements UserRepository {}

void main() {
  late TableRepositoryImpl repository;
  late MockTableRemoteDataSource mockTableRemoteDataSource;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockTableRemoteDataSource = MockTableRemoteDataSource();
    mockUserRepository = MockUserRepository();

    repository = TableRepositoryImpl(
      mockTableRemoteDataSource,
      mockUserRepository,
    );
    registerFallbackValue(DateTime.now());
  });

  group('TableRepositoryImpl Tests', () {
    final date = DateTime.now();
    final appUser = AppUser(uid: '123', isAnonymous: true);

    final tableModels = [
      TableModel(id: '1', chairs: 4, name: 'Table 1'),
      TableModel(id: '2', chairs: 6, name: 'Table 2'),
    ];

    final reservationModels = [
      ReservationModel(
        id: 'res1',
        username: 'Ahmed',
        userId: '123',
        tableId: '1',
        startTime: date,
        endTime: date.add(const Duration(hours: 1)),
      ),
    ];

    test('should return a list of mapped TableEntities when successful',
        () async {
      // Arrange
      when(() => mockUserRepository.getCurrentUser()).thenAnswer(
        (_) async => CustomResult.success(appUser),
      );
      when(() => mockTableRemoteDataSource.getTables()).thenAnswer(
        (_) async => CustomResult.success(tableModels),
      );
      when(() => mockTableRemoteDataSource.getReservationsForTableAndTime(
            startTime: any(named: 'startTime'),
            endTime: any(named: 'endTime'),
          )).thenAnswer(
        (_) async => CustomResult.success(reservationModels),
      );

      final result = await repository.getTablesForDate(date);

      expect(result.isSuccess, true);
      final tables = result.getOrNull();
      expect(tables?.length, 2);
      expect(tables?.first.status, TableStatus.reservedByMe);
      verify(() => mockUserRepository.getCurrentUser()).called(1);
      verify(() => mockTableRemoteDataSource.getTables()).called(1);
      verify(() => mockTableRemoteDataSource.getReservationsForTableAndTime(
            startTime: any(named: 'startTime'),
            endTime: any(named: 'endTime'),
          )).called(1);
    });

    test('should return failure when getting current user fails', () async {
      when(() => mockUserRepository.getCurrentUser()).thenAnswer(
        (_) async => CustomResult.failure(const NetworkFailure.unAuthorized()),
      );
      final result = await repository.getTablesForDate(date);
      expect(result.isFailure, true);
      expect(result.getErrorOrNull(), isA<NetworkFailure>());
      verify(() => mockUserRepository.getCurrentUser()).called(1);
      verifyNever(() => mockTableRemoteDataSource.getTables());
    });

    test('should return failure when fetching tables fails', () async {
      when(() => mockUserRepository.getCurrentUser()).thenAnswer(
        (_) async => CustomResult.success(appUser),
      );
      // get Resrvation
      when(() => mockTableRemoteDataSource.getReservationsForTableAndTime(
            startTime: any(named: 'startTime'),
            endTime: any(named: 'endTime'),
          )).thenAnswer(
        (_) async => CustomResult.success(reservationModels),
      );

      when(() => mockTableRemoteDataSource.getTables()).thenAnswer(
        (_) async => CustomResult.failure(const NetworkFailure.api()),
      );
      final result = await repository.getTablesForDate(date);

      expect(result.isFailure, true);
      verify(() => mockUserRepository.getCurrentUser()).called(1);
      verify(() => mockTableRemoteDataSource.getTables()).called(1);
    });

    test('should return empty list if no tables are found', () async {
      // Arrange
      when(() => mockUserRepository.getCurrentUser()).thenAnswer(
        (_) async => CustomResult.success(appUser),
      );
      when(() => mockTableRemoteDataSource.getTables()).thenAnswer(
        (_) async => CustomResult.success([]),
      );
      when(() => mockTableRemoteDataSource.getReservationsForTableAndTime(
            startTime: any(named: 'startTime'),
            endTime: any(named: 'endTime'),
          )).thenAnswer(
        (_) async => CustomResult.success([]),
      );

      final result = await repository.getTablesForDate(date);

      expect(result.isSuccess, true);
      expect(result.getOrNull(), isEmpty);
      verify(() => mockUserRepository.getCurrentUser()).called(1);
      verify(() => mockTableRemoteDataSource.getTables()).called(1);
      verify(() => mockTableRemoteDataSource.getReservationsForTableAndTime(
            startTime: any(named: 'startTime'),
            endTime: any(named: 'endTime'),
          )).called(1);
    });

    test('should return success when reserving table is successful', () async {
      when(() => mockTableRemoteDataSource.reserveTable(
              tableId: any(named: 'tableId'),
              userId: any(named: 'userId'),
              username: any(named: 'username'),
              startDate: any(named: 'startDate'),
              endDate: any(named: 'endDate')))
          .thenAnswer((_) async => CustomResult.success(ReservationModel(
              id: '1',
              tableId: '1',
              userId: '1',
              username: 'Ahmed',
              startTime: date,
              endTime: date.add(const Duration(hours: 1)))));

      when(() => mockUserRepository.getCurrentUser()).thenAnswer(
        (_) async => CustomResult.success(appUser),
      );

      final result = await repository.reserveTable('1', 'Ahmed', date);

      expect(result.isSuccess, true);
      verify(() => mockTableRemoteDataSource.reserveTable(
            tableId: '1',
            userId: any(named: 'userId'),
            username: 'Ahmed',
            startDate: date,
            endDate: date.add(const Duration(hours: 1)),
          )).called(1);
    });

    test('should return failure when reserving table fails', () async {
      when(() => mockTableRemoteDataSource.reserveTable(
              tableId: any(named: 'tableId'),
              userId: any(named: 'userId'),
              username: any(named: 'username'),
              startDate: any(named: 'startDate'),
              endDate: any(named: 'endDate')))
          .thenAnswer(
              (_) async => CustomResult.failure(const NetworkFailure.api()));
      when(() => mockUserRepository.getCurrentUser()).thenAnswer(
        (_) async => CustomResult.success(appUser),
      );
      final result = await repository.reserveTable('1', 'Ahmed', date);

      expect(result.isFailure, true);
      verify(() => mockTableRemoteDataSource.reserveTable(
            tableId: '1',
            userId: any(named: 'userId'),
            username: 'Ahmed',
            startDate: date,
            endDate: date.add(const Duration(hours: 1)),
          )).called(1);
    });
  });
}
