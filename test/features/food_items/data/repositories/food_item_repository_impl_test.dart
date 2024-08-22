import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
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
    repository = FoodItemRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  final foodItems = [
    const FoodItemEntity(
      id: '1',
      name: 'Pizza',
      description: 'Delicious cheese pizza',
      price: 9.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
    const FoodItemEntity(
      id: '2',
      name: 'Burger',
      description: 'Juicy beef burger',
      price: 7.99,
      imageUrl: 'url_to_image',
      category: 'Main Course',
    ),
  ];

  group('getFoodItems', () {
    test('should return list of food items from remote data source', () async {
      when(() => mockRemoteDataSource.getFoodItems())
          .thenAnswer((_) async => foodItems);

      final result = await repository.getFoodItems();

      expect(result, equals(foodItems));
      verify(() => mockRemoteDataSource.getFoodItems()).called(1);
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });
}
