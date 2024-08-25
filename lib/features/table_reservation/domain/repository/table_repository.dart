import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';

abstract class TableRepository {
  Future<CustomResult<List<TableEntity>>> getTablesForDate(DateTime date);
  Future<CustomResult> reserveTable(
      String tableId, String username, DateTime date);
  Future<CustomResult> cancelReservation(String reservationId);
}
