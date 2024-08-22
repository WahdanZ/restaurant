import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/presentation/bloc/food_items_bloc.dart';

import '../../../../mock.dart';
import '../../../../test_injection.dart';

void main() {
  late MockGetFoodItemsUseCase mockGetFoodItemsUseCase;
  late FoodItemsBloc foodItemsBloc;

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
  setUpAll(() {
    configureTestDependencies();
  });
  setUp(() {
    mockGetFoodItemsUseCase = injectMock();
    foodItemsBloc = FoodItemsBloc(
      getFoodItemsUseCase: mockGetFoodItemsUseCase,
    );
  });

  blocTest<FoodItemsBloc, FoodItemsState>(
    'emits [loading, loaded] when started event is added and food items are fetched',
    build: () {
      when(() => mockGetFoodItemsUseCase.execute(params: Any()))
          .thenAnswer((_) async => CustomResult.success(foodItems));
      return foodItemsBloc;
    },
    act: (bloc) => bloc.add(const FoodItemsEvent.started()),
    expect: () => [
      const FoodItemsState.loading(),
      FoodItemsState.loaded(foodItems),
    ],
    verify: (_) {
      verify(() => mockGetFoodItemsUseCase.execute(params: Any())).called(1);
    },
  );

  blocTest<FoodItemsBloc, FoodItemsState>(
    'emits [loaded] with filtered items when searchFoodItems event is added',
    build: () {
      when(() => mockGetFoodItemsUseCase.execute(params: Any()))
          .thenAnswer((_) async => CustomResult.success(foodItems));
      return foodItemsBloc;
    },
    seed: () {
      foodItemsBloc.allFoodItems = foodItems;
      return FoodItemsState.loaded(foodItems);
    },
    act: (bloc) => bloc.add(const FoodItemsEvent.searchFoodItems('Pizza')),
    expect: () => [
      FoodItemsState.loaded([foodItems.first]), // Filtered list
    ],
  );
}
