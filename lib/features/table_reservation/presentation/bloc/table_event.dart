part of 'table_bloc.dart';

@freezed
class TableEvent with _$TableEvent {
  const factory TableEvent.fetchTables(DateTime date) = FetchTables;
  const factory TableEvent.reserveTable(
      {required TableEntity table,
      required String username,
      required DateTime date}) = ReserveTable;
  const factory TableEvent.cancelReservation(String reservationId) =
      CancelReservation;
}
