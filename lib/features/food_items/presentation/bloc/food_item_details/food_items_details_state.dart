part of 'food_items_details_bloc.dart';

@freezed
class FoodItemsDetailsState with _$FoodItemsDetailsState {
  const factory FoodItemsDetailsState.initial() = _Initial;
  const factory FoodItemsDetailsState.loading() = _Loading;
  const factory FoodItemsDetailsState.loaded(FoodItemEntity foodItem) = _Loaded;
  const factory FoodItemsDetailsState.error() = _Error;
}
