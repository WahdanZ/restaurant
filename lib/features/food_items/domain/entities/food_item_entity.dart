import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_item_entity.freezed.dart';
@freezed
class FoodItemEntity with _$FoodItemEntity {
  const factory FoodItemEntity({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required String category,
  }) = _FoodItemEntity;

}