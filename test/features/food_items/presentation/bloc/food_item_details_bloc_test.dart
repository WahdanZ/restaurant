// FoodItemsDetailsBloc test
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/presentation/bloc/food_item_details/food_items_details_bloc.dart';

import '../../../../mock.dart';
import '../../../../test_injection.dart';

main() {
  late MockGetFoodItemDetailsUseCase mockGetFoodItemDetailsUseCase;
  late FoodItemsDetailsBloc foodItemsDetailsBloc;

  final foodItem = const FoodItemEntity(
    id: '1',
    name: 'Pizza',
    description: 'Delicious cheese pizza',
    price: 9.99,
    imageUrl: 'url_to_image',
    category: 'Main Course',
  );

  setUpAll(() {
    configureTestDependencies();
  });
  setUp(() {
    mockGetFoodItemDetailsUseCase = injectMock();
    foodItemsDetailsBloc = FoodItemsDetailsBloc(
      mockGetFoodItemDetailsUseCase,
    );
  });

  blocTest<FoodItemsDetailsBloc, FoodItemsDetailsState>(
    'emits [loading, loaded] when started event is added and food item is fetched',
    build: () {
      when(() => mockGetFoodItemDetailsUseCase.execute(
              params: any(named: 'params')))
          .thenAnswer((_) async => CustomResult.success(foodItem));
      return foodItemsDetailsBloc;
    },
    act: (bloc) =>
        bloc.add(const FoodItemsDetailsEvent.getFoodItemDetails('1')),
    expect: () => [
      const FoodItemsDetailsState.loading(),
      FoodItemsDetailsState.loaded(foodItem),
    ],
    verify: (_) {
      verify(() => mockGetFoodItemDetailsUseCase.execute(
          params: any(named: 'params'))).called(1);
    },
  );
}
