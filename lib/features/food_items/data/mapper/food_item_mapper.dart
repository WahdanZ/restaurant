import 'package:restaurant/base/mapper/mapper.dart';
import 'package:restaurant/features/food_items/data/models/food_item.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

class FoodItemMapper extends Mapper<FoodItem, FoodItemEntity> {
  @override
  FoodItem mapFromEntity(FoodItemEntity type) {
    return FoodItem(
      id: type.id,
      name: type.name,
      description: type.description,
      price: type.price,
      imageUrl: type.imageUrl,
      category: type.category,
    );
  }

  @override
  FoodItemEntity mapFromModel(FoodItem type) {
    return FoodItemEntity(
      name: type.name,
      description: type.description,
      price: type.price,
      imageUrl: type.imageUrl,
      category: type.category,
      id: type.id,
    );
  }
}
