import 'package:injectable/injectable.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/base/remote/firebase_network_task.dart';

import '../models/food_item.dart';

abstract class FoodItemRemoteDataSource {
  Future<CustomResult<List<FoodItem>>> getFoodItems();
}

@LazySingleton(as: FoodItemRemoteDataSource)
class FoodItemFireStoreRemoteDataSourceImpl
    implements FoodItemRemoteDataSource {
  final NetworkTaskManager networkTask;

  FoodItemFireStoreRemoteDataSourceImpl({required this.networkTask});

  @override
  Future<CustomResult<List<FoodItem>>> getFoodItems() async {
    final task = FirebaseNetworkTask(() async {
      final querySnapshot = await foodItemCollectionRef.get();
      final foodItems = querySnapshot.docs;
      return foodItems.map((foodItem) => foodItem.data).toList();
    });
    return networkTask.executeTask(task);
  }
}
