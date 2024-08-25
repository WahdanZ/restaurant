part of 'food_items_details_bloc.dart';

@freezed
class FoodItemsDetailsEvent with _$FoodItemsDetailsEvent {
  const factory FoodItemsDetailsEvent.started() = _Started;
  const factory FoodItemsDetailsEvent.getFoodItemDetails(String id) =
      GetFoodItemDetailsEvent;
}
