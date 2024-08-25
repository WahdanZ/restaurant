import 'package:injectable/injectable.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/food_items/data/remote/data_source/food_item_remote_data_source.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

import '../../domain/repositories/food_item_repository.dart';
import '../mapper/food_item_mapper.dart';

@LazySingleton(as: FoodItemRepository)
class FoodItemRepositoryImpl implements FoodItemRepository {
  final FoodItemRemoteDataSource remoteDataSource;
  final FoodItemMapper foodItemMapper;

  FoodItemRepositoryImpl({
    required this.remoteDataSource,
    required this.foodItemMapper,
  });

  @override
  Future<CustomResult<List<FoodItemEntity>>> getFoodItems() async {
    return remoteDataSource.getFoodItems().map((foodItems) {
      return foodItems
          .map((foodItem) => foodItemMapper.mapFromModel(foodItem))
          .toList();
    });
  }

  @override
  Future<CustomResult<FoodItemEntity>> getFoodItemById(String id) {
    return remoteDataSource
        .getFoodItemById(id)
        .map(foodItemMapper.mapFromModel);
  }
}
