part of 'table_bloc.dart';

@freezed
class TableEvent with _$TableEvent {
  const factory TableEvent.fetchTables(DateTime date) = FetchTables;
  const factory TableEvent.reserveTable(
      String tableId, String username, DateTime date) = ReserveTable;
  const factory TableEvent.cancelReservation(String tableId, DateTime date) =
      CancelReservation;
}
