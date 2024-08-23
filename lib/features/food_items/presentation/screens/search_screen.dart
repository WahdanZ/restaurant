import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/features/food_items/presentation/bloc/food_items_bloc.dart';
import 'package:restaurant/features/food_items/presentation/widgets/food_item_widget.dart';

class CupertinoSearchView extends StatelessWidget {
  const CupertinoSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Search Food Items'),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Navigator.pop(context),
          child: const Icon(CupertinoIcons.back),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                onChanged: (query) {
                  context
                      .read<FoodItemsBloc>()
                      .add(FoodItemsEvent.searchFoodItems(query));
                },
                placeholder: 'Search food items...',
              ),
              Expanded(
                child: BlocBuilder<FoodItemsBloc, FoodItemsState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () =>
                          const Center(child: CupertinoActivityIndicator()),
                      loaded: (foodItems) => ListView.builder(
                        itemCount: foodItems.length,
                        itemBuilder: (context, index) {
                          final foodItem = foodItems[index];
                          return FoodItemWidget(foodItem: foodItem);
                        },
                      ),
                      error: () => const Center(child: Text('No items found')),
                      initial: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
