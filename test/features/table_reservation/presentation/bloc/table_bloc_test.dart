import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/cancel_reserve_table_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/get_tables_for_date_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/reserve_table_use_case.dart';
import 'package:restaurant/features/table_reservation/presentation/bloc/table_bloc.dart';

import '../../../../mock.dart';

void main() {
  late TableBloc tableBloc;
  late MockGetTablesForDateUseCase mockGetTablesForDateUseCase;
  late MockReserveTableUseCase mockReserveTableUseCase;
  late MockCancelReserveTableUseCase mockCancelReserveTableUseCase;
  setUpAll(() {
    registerFallbackValue(GetTablesForDateUseCaseParams(DateTime.now()));
    registerFallbackValue(ReserveTableUseCaseParams('', DateTime.now(), ''));
    registerFallbackValue(CancelReserveTableUseCaseParams(''));
  });
  setUp(() {
    mockGetTablesForDateUseCase = MockGetTablesForDateUseCase();
    mockReserveTableUseCase = MockReserveTableUseCase();
    mockCancelReserveTableUseCase = MockCancelReserveTableUseCase();
    tableBloc = TableBloc(
      mockGetTablesForDateUseCase,
      mockReserveTableUseCase,
      mockCancelReserveTableUseCase,
    );
  });

  group('TableBloc Tests', () {
    final date = DateTime(2024, 8, 25);
    final tableEntities = [
      const TableEntity(
          id: '1', name: 'Table 1', chairs: 4, status: TableStatus.available),
      const TableEntity(
          id: '2', name: 'Table 2', chairs: 6, status: TableStatus.reserved),
    ];

    test('initial state is TableState.initial', () {
      expect(tableBloc.state, equals(const TableState.initial()));
    });

    blocTest<TableBloc, TableState>(
      'emits [loading, loaded] when GetTablesForDateEvent is added and use case is successful',
      build: () {
        when(() => mockGetTablesForDateUseCase.execute(
            params: any(named: 'params'))).thenAnswer(
          (_) async => CustomResult.success(tableEntities),
        );
        return tableBloc;
      },
      act: (bloc) => bloc.add(TableEvent.fetchTables(date)),
      expect: () => [
        const TableState.loading(),
        TableState.loaded(tableEntities),
      ],
      verify: (_) {
        verify(() => mockGetTablesForDateUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<TableBloc, TableState>(
      'emits [loading, error] when GetTablesForDateEvent fails',
      build: () {
        when(() => mockGetTablesForDateUseCase.execute(
            params: any(named: 'params'))).thenAnswer(
          (_) async => CustomResult.failure(
              const NetworkFailure.api(message: 'Failed to fetch tables')),
        );
        return tableBloc;
      },
      act: (bloc) => bloc.add(TableEvent.fetchTables(date)),
      expect: () => [
        const TableState.loading(),
        const TableState.error('Failed to fetch tables'),
      ],
      verify: (_) {
        verify(() => mockGetTablesForDateUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<TableBloc, TableState>(
      'emits [reservationSuccess] when ReserveTableEvent is added and use case is successful',
      build: () {
        when(() =>
                mockReserveTableUseCase.execute(params: any(named: 'params')))
            .thenAnswer(
          (_) async => CustomResult.success(true),
        );
        return tableBloc;
      },
      act: (bloc) => bloc.add(TableEvent.reserveTable(
        table: tableEntities.first,
        username: 'Ahmed',
        date: date,
      )),
      expect: () => [
        const TableState.loading(),
        TableState.reserved(tableEntities.first.name),
      ],
      verify: (_) {
        verify(() =>
                mockReserveTableUseCase.execute(params: any(named: 'params')))
            .called(1);
      },
    );

    blocTest<TableBloc, TableState>(
      'emits [reservationError] when ReserveTableEvent fails',
      build: () {
        when(() =>
                mockReserveTableUseCase.execute(params: any(named: 'params')))
            .thenAnswer(
          (_) async => CustomResult.failure(
              const NetworkFailure.api(message: 'Failed to reserve table')),
        );
        return tableBloc;
      },
      act: (bloc) => bloc.add(TableEvent.reserveTable(
        table: tableEntities.first,
        username: 'Ahmed',
        date: date,
      )),
      expect: () => [
        const TableState.loading(),
        const TableState.error('Failed to reserve table'),
      ],
      verify: (_) {
        verify(() =>
                mockReserveTableUseCase.execute(params: any(named: 'params')))
            .called(1);
      },
    );

    blocTest<TableBloc, TableState>(
      'emits [cancelSuccess] when CancelReservationEvent is added and use case is successful',
      build: () {
        when(() => mockCancelReserveTableUseCase.execute(
            params: any(named: 'params'))).thenAnswer(
          (_) async => CustomResult.success(true),
        );
        return tableBloc;
      },
      act: (bloc) => bloc.add(const TableEvent.cancelReservation('res1')),
      expect: () => [
        const TableState.loading(),
        const TableState.cancelled('Reservation cancelled'),
      ],
      verify: (_) {
        verify(() => mockCancelReserveTableUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );

    blocTest<TableBloc, TableState>(
      'emits [cancelError] when CancelReservationEvent fails',
      build: () {
        when(() => mockCancelReserveTableUseCase.execute(
            params: any(named: 'params'))).thenAnswer(
          (_) async => CustomResult.failure(const NetworkFailure.api(
              message: 'Failed to cancel reservation')),
        );
        return tableBloc;
      },
      act: (bloc) => bloc.add(const TableEvent.cancelReservation('res1')),
      expect: () => [
        const TableState.loading(),
        const TableState.error('Failed to cancel reservation'),
      ],
      verify: (_) {
        verify(() => mockCancelReserveTableUseCase.execute(
            params: any(named: 'params'))).called(1);
      },
    );
  });
}
