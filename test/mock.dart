import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/features/food_items/domain/repositories/food_item_repository.dart';

@injectable
class MockFoodItemRepository extends Mock implements FoodItemRepository {}
