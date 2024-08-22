import '../entities/food_item_entity.dart';
import '../repositories/food_item_repository.dart';

class GetFoodItemsUseCase {
  final FoodItemRepository repository;

  GetFoodItemsUseCase(this.repository);

  Future<List<FoodItemEntity>> call() async {
    return repository.getFoodItems();
  }
}
