import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

abstract class FoodItemRepository {
  Future<CustomResult<List<FoodItemEntity>>> getFoodItems();
}
