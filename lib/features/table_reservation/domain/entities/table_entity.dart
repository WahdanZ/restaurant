import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_entity.freezed.dart';

@freezed
class TableEntity with _$TableEntity {
  const factory TableEntity({
    required String id,
    required String name,
    required int chairs,
    required TableStatus status,
    String? reservationBy,
    String? reservationId,
  }) = _TableEntity;
}

enum TableStatus { available, reserved, reservedByMe }
