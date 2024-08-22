import 'package:restaurant/base/domain/index.dart';
import 'package:restaurant/base/result/result.dart';

import '../entities/food_item_entity.dart';
import '../repositories/food_item_repository.dart';

class GetFoodItemsUseCase extends UseCaseResult<List<FoodItemEntity>, Any> {
  final FoodItemRepository repository;

  GetFoodItemsUseCase(this.repository);

  @override
  Future<CustomResult<List<FoodItemEntity>>> buildUseCase(Any params) {
    return repository.getFoodItems();
  }
}
