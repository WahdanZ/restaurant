part of 'food_items_bloc.dart';

@freezed
class FoodItemsState with _$FoodItemsState {
  const factory FoodItemsState.initial() = _Initial;
  const factory FoodItemsState.loading() = _Loading;
  const factory FoodItemsState.loaded(List<FoodItemEntity> foodItems) = _Loaded;
  const factory FoodItemsState.error() = _Error;
}
