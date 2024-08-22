import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/features/food_items/data/data_source/food_item_remote_data_source.dart';
import 'package:restaurant/features/food_items/data/models/food_item.dart';
import 'package:restaurant/features/food_items/domain/repositories/food_item_repository.dart';

@injectable
class MockFoodItemRepository extends Mock implements FoodItemRepository {}

@injectable
class MockFoodItemCollection extends Mock
    implements FoodItemCollectionReference {}

@injectable
class MockFoodItemQuerySnapshot extends Mock implements FoodItemQuerySnapshot {}

@injectable
class MockFoodItemQueryDocumentSnapshot extends Mock
    implements FoodItemQueryDocumentSnapshot {}

@injectable
class MockFoodItemRemoteDataSource extends Mock
    implements FoodItemRemoteDataSource {}
