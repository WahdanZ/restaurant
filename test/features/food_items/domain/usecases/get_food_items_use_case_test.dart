import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/domain/usecases/get_food_items_use_case.dart';

import '../../../../mock.dart';
import '../../../../test_injection.dart';

void main() {
  late MockFoodItemRepository mockFoodItemRepository;
  late GetFoodItemsUseCase getFoodItemsUseCase;

  setUpAll(() {
      configureTestDependencies()
  });
  setUp(() {
    mockFoodItemRepository = injectMock();
    getFoodItemsUseCase = GetFoodItemsUseCase(mockFoodItemRepository);
  });

  const foodItems = [
    FoodItemEntity(
      id: '1',
      name: 'Pizza',
      description: 'Delicious cheese pizza',
      price: 9.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
    FoodItemEntity(
      id: '2',
      name: 'Burger',
      description: 'Juicy beef burger',
      price: 7.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
  ];

  test('should return list of food items from the repository', () async {
    // Arrange
    when(() => mockFoodItemRepository.getFoodItems())
        .thenAnswer((_) async => foodItems);

    final result = await getFoodItemsUseCase();
    expect(result, equals(foodItems));
    verify(() => mockFoodItemRepository.getFoodItems()).called(1);
  });
}
