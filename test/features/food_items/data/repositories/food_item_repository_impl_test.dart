import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/food_items/data/mapper/food_item_mapper.dart';
import 'package:restaurant/features/food_items/data/models/food_item.dart';
import 'package:restaurant/features/food_items/data/repositories/food_item_repository_impl.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

import '../../../../mock.dart';
import '../../../../test_injection.dart';

void main() {
  late FoodItemRepositoryImpl repository;
  late MockFoodItemRemoteDataSource mockRemoteDataSource;

  setUpAll(() {
    configureTestDependencies();
  });
  setUp(() {
    mockRemoteDataSource = injectMock();
    repository = FoodItemRepositoryImpl(
        remoteDataSource: mockRemoteDataSource,
        foodItemMapper: FoodItemMapper());
  });

  final foodItems = [
    FoodItem(
      name: 'Pizza',
      description: 'Delicious cheese pizza',
      price: 9.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
    FoodItem(
      name: 'Burger',
      description: 'Juicy beef burger',
      price: 7.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
  ];
  final foodItemEntities = [
    const FoodItemEntity(
      name: 'Pizza',
      description: 'Delicious cheese pizza',
      price: 9.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
      id: '',
    ),
    const FoodItemEntity(
      name: 'Burger',
      description: 'Juicy beef burger',
      price: 7.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
      id: '',
    ),
  ];

  group('getFoodItems', () {
    test('should return list of food items from remote data source', () async {
      when(() => mockRemoteDataSource.getFoodItems())
          .thenAnswer((_) async => CustomResult.success(foodItems));

      final result = (await repository.getFoodItems()).getOrNull();

      expect(result, equals(foodItemEntities));
      verify(() => mockRemoteDataSource.getFoodItems()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });
}
