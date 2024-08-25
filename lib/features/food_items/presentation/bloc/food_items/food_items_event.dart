part of 'food_items_bloc.dart';

@freezed
class FoodItemsEvent with _$FoodItemsEvent {
  const factory FoodItemsEvent.started() = _Started;
  const factory FoodItemsEvent.searchFoodItems(String query) = _SearchFoodItems;
}
