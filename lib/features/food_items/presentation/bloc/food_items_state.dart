part of 'food_items_bloc.dart';

@freezed
class FoodItemsState with _$FoodItemsState {
  const factory FoodItemsState.initial() = FoodItemsStateInitial;
  const factory FoodItemsState.loading() = FoodItemsStateLoading;
  const factory FoodItemsState.loaded(List<FoodItemEntity> foodItems) =
      FoodItemsStateLoaded;
  const factory FoodItemsState.error() = FoodItemsStateError;
}
