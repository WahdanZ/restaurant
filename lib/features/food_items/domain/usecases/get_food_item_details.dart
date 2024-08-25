import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/domain/repositories/food_item_repository.dart';

import '../../../../base/index.dart';

class GetFoodItemDetailsUseCase
    extends UseCaseResult<FoodItemEntity, GetFoodItemParams> {
  final FoodItemRepository repository;

  GetFoodItemDetailsUseCase(this.repository);

  @override
  Future<CustomResult<FoodItemEntity>> buildUseCase(GetFoodItemParams params) {
    return repository.getFoodItemById(params.id);
  }
}

class GetFoodItemParams extends Params {
  final String id;

  GetFoodItemParams(this.id);

  @override
  List<Object?> get props => [id];
}
