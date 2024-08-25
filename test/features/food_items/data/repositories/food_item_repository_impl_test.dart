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
      id: '1',
      name: 'Pizza',
      description: 'Delicious cheese pizza',
      price: 9.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
    FoodItem(
      id: '2',
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
      id: '1',
    ),
    const FoodItemEntity(
      name: 'Burger',
      description: 'Juicy beef burger',
      price: 7.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
      id: '2',
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
    test('should return failure when remote data source return failure',
        () async {
      when(() => mockRemoteDataSource.getFoodItems()).thenAnswer(
          (_) async => CustomResult.failure(NetworkFailure.unknown()));

      final result = (await repository.getFoodItems());

      expect(result, isA<Failure>());
      verify(() => mockRemoteDataSource.getFoodItems()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });
  // get food item by id
  group('getFoodItemById', () {
    test('should return food item from remote data source', () async {
      when(() => mockRemoteDataSource.getFoodItemById('1'))
          .thenAnswer((_) async => CustomResult.success(foodItems[0]));

      final result = (await repository.getFoodItemById('1')).getOrNull();

      expect(result, equals(foodItemEntities[0]));
      verify(() => mockRemoteDataSource.getFoodItemById('1')).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
    test('should return failure when remote data source return failure',
        () async {
      when(() => mockRemoteDataSource.getFoodItemById('1')).thenAnswer(
          (_) async => CustomResult.failure(NetworkFailure.unknown()));

      final result = (await repository.getFoodItemById('1'));

      expect(result, isA<Failure>());
      verify(() => mockRemoteDataSource.getFoodItemById('1')).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });
}
