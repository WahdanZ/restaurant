import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

abstract class FoodItemRepository {
  Future<List<FoodItemEntity>> getFoodItems();
  Future<List<FoodItemEntity>> searchFoodItems(String query);
}
