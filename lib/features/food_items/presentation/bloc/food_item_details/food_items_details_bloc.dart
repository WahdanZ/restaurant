import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/domain/usecases/get_food_item_details.dart';

part 'food_items_details_bloc.freezed.dart';
part 'food_items_details_event.dart';
part 'food_items_details_state.dart';

class FoodItemsDetailsBloc
    extends Bloc<FoodItemsDetailsEvent, FoodItemsDetailsState> {
  final GetFoodItemDetailsUseCase getFoodItemDetailsUseCase;

  FoodItemsDetailsBloc(this.getFoodItemDetailsUseCase)
      : super(const FoodItemsDetailsState.initial()) {
    on<FoodItemsDetailsEvent>((event, emit) {});
    on<GetFoodItemDetailsEvent>((event, emit) async {
      emit(const FoodItemsDetailsState.loading());
      final result = await getFoodItemDetailsUseCase.execute(
          params: GetFoodItemParams(event.id));
      result.when(
        success: (foodItem) {
          emit(FoodItemsDetailsState.loaded(foodItem));
        },
        failure: (error) {
          emit(const FoodItemsDetailsState.error());
        },
      );
    });
  }
}
