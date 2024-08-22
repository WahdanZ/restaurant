import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/domain/usecases/get_food_items_use_case.dart';

part 'food_items_bloc.freezed.dart';
part 'food_items_event.dart';
part 'food_items_state.dart';

class FoodItemsBloc extends Bloc<FoodItemsEvent, FoodItemsState> {
  final GetFoodItemsUseCase getFoodItemsUseCase;
  @visibleForTesting
  List<FoodItemEntity> allFoodItems = [];

  FoodItemsBloc({
    required this.getFoodItemsUseCase,
  }) : super(const FoodItemsState.initial()) {
    on<_Started>(_onStarted);
    on<_SearchFoodItems>(_onSearchFoodItems);
  }

  Future<void> _onStarted(_Started event, Emitter<FoodItemsState> emit) async {
    emit(const FoodItemsState.loading());
    try {
      final foodItems = await getFoodItemsUseCase.execute(params: Any());
      foodItems.when(
        success: (items) {
          logger.i('Food items loaded: $items');
          allFoodItems = items;
          emit(FoodItemsState.loaded(items));
        },
        failure: (error) {
          logger.e('Failed to load food items: $error');
          emit(const FoodItemsState.error());
        },
      );
    } catch (e) {
      logger.e('Failed to load food items', error: e);
      emit(const FoodItemsState.error());
    }
  }

  Future<void> _onSearchFoodItems(
      _SearchFoodItems event, Emitter<FoodItemsState> emit) async {
    final filteredItems = allFoodItems
        .where((item) =>
            item.name.toLowerCase().contains(event.query.toLowerCase()))
        .toList();
    emit(FoodItemsState.loaded(filteredItems));
  }
}
