import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

import '../../domain/repositories/food_item_repository.dart';
import '../data_source/food_item_remote_data_source.dart';

class FoodItemRepositoryImpl implements FoodItemRepository {
  final FoodItemRemoteDataSource remoteDataSource;

  FoodItemRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<FoodItemEntity>> getFoodItems() async {
    return await remoteDataSource.getFoodItems();
  }

  @override
  Future<List<FoodItemEntity>> searchFoodItems(String query) {
    // TODO: implement searchFoodItems
    throw UnimplementedError();
  }
}
