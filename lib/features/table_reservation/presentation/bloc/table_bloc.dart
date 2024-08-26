import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/cancel_reserve_table_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/get_tables_for_date_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/reserve_table_use_case.dart';

part 'table_bloc.freezed.dart';
part 'table_event.dart';
part 'table_state.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  final GetTablesForDateUseCase getTablesForDateUseCase;
  final ReserveTableUseCase reserveTableUseCase;
  final CancelReserveTableUseCase cancelReserveTableUseCase;

  TableBloc(this.getTablesForDateUseCase, this.reserveTableUseCase,
      this.cancelReserveTableUseCase)
      : super(const TableState.initial()) {
    on<FetchTables>(_onFetchTables);
    on<ReserveTable>(_onReserveTable);
    on<CancelReservation>(_onCancelReservation);
  }

  Future<void> _onFetchTables(
      FetchTables event, Emitter<TableState> emit) async {
    emit(const TableState.loading());
    final tables = await getTablesForDateUseCase.execute(
        params: GetTablesForDateUseCaseParams(event.date));
    tables.when(
      success: (tables) {
        emit(TableState.loaded(tables));
      },
      failure: (failure) {
        emit(TableState.error(failure.message));
      },
    );
  }

  Future<void> _onReserveTable(
      ReserveTable event, Emitter<TableState> emit) async {
    emit(const TableState.loading());
    final result = await reserveTableUseCase.execute(
        params: ReserveTableUseCaseParams(
            event.table.id, event.date, event.username));
    result.when(
      success: (success) {
        emit(TableState.reserved(event.table.name));
      },
      failure: (failure) {
        emit(TableState.error(failure.message));
      },
    );
  }

  Future<void> _onCancelReservation(
      CancelReservation event, Emitter<TableState> emit) async {
    emit(const TableState.loading());
    final result = await cancelReserveTableUseCase.execute(
        params: CancelReserveTableUseCaseParams(event.reservationId));
    result.when(
      success: (success) {
        emit(const TableState.initial());
      },
      failure: (failure) {
        emit(TableState.error(failure.message));
      },
    );
  }
}
