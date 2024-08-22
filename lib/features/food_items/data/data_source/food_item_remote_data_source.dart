import '../../domain/entities/food_item_entity.dart';
import '../models/food_item.dart';

abstract class FoodItemRemoteDataSource {
  Future<List<FoodItemEntity>> getFoodItems();
}

class FoodItemFireStoreRemoteDataSourceImpl
    implements FoodItemRemoteDataSource {
  @override
  Future<List<FoodItemEntity>> getFoodItems() async {
    final querySnapshot = await foodItemCollectionRef.get();
    return querySnapshot.docs.map((doc) {
      final foodItem = doc.data;
      return FoodItemEntity(
        id: doc.id,
        name: foodItem.name,
        description: foodItem.description,
        price: foodItem.price,
        imageUrl: foodItem.imageUrl,
        category: foodItem.category,
      );
    }).toList();
  }
}
