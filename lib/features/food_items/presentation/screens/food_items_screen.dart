import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/common/screen/seed_data/seed_data_screen.dart';
import 'package:restaurant/di/injector.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';
import 'package:restaurant/features/food_items/presentation/bloc/food_items_bloc.dart';

class FoodItemsScreen extends StatelessWidget {
  const FoodItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodItemsBloc>(
      create: (context) => inject()..add(const FoodItemsEvent.started()),
      child: Builder(builder: (context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: const Text('Food Items'),
            // seed data screen,
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showSeedDataScreen(context);
              },
              child: const Icon(CupertinoIcons.refresh),
            ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showCupertinoSearch(context);
              },
              child: const Icon(CupertinoIcons.search),
            ),
          ),
          child: SafeArea(
            child: BlocBuilder<FoodItemsBloc, FoodItemsState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: Text('Start by searching...')),
                  loading: () =>
                      const Center(child: CupertinoActivityIndicator()),
                  loaded: (foodItems) {
                    if (foodItems.isEmpty) {
                      return const Center(child: Text('No food items found'));
                    }
                    return ListView.builder(
                      itemCount: foodItems.length,
                      itemBuilder: (context, index) {
                        final foodItem = foodItems[index];
                        return CustomCupertinoListTile(foodItem: foodItem);
                      },
                    );
                  },
                  error: () =>
                      const Center(child: Text('Failed to load food items')),
                );
              },
            ),
          ),
        );
      }),
    );
  }

  void showCupertinoSearch(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => BlocProvider<FoodItemsBloc>(
          create: (__) => context.read(), child: const CupertinoSearchView()),
    );
  }

  void showSeedDataScreen(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => SeedDataScreen(),
    );
  }
}

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
                          return CustomCupertinoListTile(foodItem: foodItem);
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

class CustomCupertinoListTile extends StatelessWidget {
  final FoodItemEntity foodItem;

  const CustomCupertinoListTile({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      leading: Image.network(foodItem.imageUrl),
      title: Text(foodItem.name),
      subtitle: Text('\$${foodItem.price}'),
    );
  }
}
