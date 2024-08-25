part of 'table_bloc.dart';

@freezed
class TableState with _$TableState {
  const factory TableState.initial() = Initial;
  const factory TableState.loading() = Loading;
  const factory TableState.loaded(List<TableEntity> tables) = Loaded;
  const factory TableState.error(String message) = Error;
  const factory TableState.reserved(String tableId) = Reserved;
  const factory TableState.cancelled(String tableId) = Cancelled;
}
