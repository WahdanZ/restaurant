import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/common/screen/seed_data/seed_data_screen.dart';
import 'package:restaurant/di/injector.dart';
import 'package:restaurant/features/food_items/presentation/bloc/food_items/food_items_bloc.dart';
import 'package:restaurant/features/food_items/presentation/widgets/food_item_widget.dart';

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
            leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showSeedDataScreen(context);
              },
              child: const Icon(CupertinoIcons.selection_pin_in_out),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoSearchTextField(
                    onChanged: (query) {
                      context
                          .read<FoodItemsBloc>()
                          .add(FoodItemsEvent.searchFoodItems(query));
                    },
                    placeholder: 'Search Food Items',
                  ),
                ),
                Expanded(
                  child: BlocBuilder<FoodItemsBloc, FoodItemsState>(
                    builder: (context, state) {
                      final crossAxisCount =
                          MediaQuery.of(context).size.width ~/ 200;

                      return CustomScrollView(
                        slivers: [
                          CupertinoSliverRefreshControl(
                            onRefresh: () async {
                              logger.d('Refreshed');
                              context
                                  .read<FoodItemsBloc>()
                                  .add(const FoodItemsEvent.started());
                              await Future.delayed(const Duration(seconds: 2));
                            },
                          ),
                          state.maybeWhen(
                            loaded: (items) {
                              if (items.isEmpty) {
                                return const SliverFillRemaining(
                                  child: Center(
                                      child: Text('No food items found')),
                                );
                              }

                              return SliverGrid(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) {
                                    final foodItem = items[index];
                                    return FoodItemWidget(foodItem: foodItem);
                                  },
                                  childCount: items.length,
                                ),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: crossAxisCount,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                ),
                              );
                            },
                            loading: () {
                              return const SliverFillRemaining(
                                child:
                                    Center(child: CupertinoActivityIndicator()),
                              );
                            },
                            error: () {
                              return const SliverFillRemaining(
                                child: Center(
                                    child: Text('Failed to load food items')),
                              );
                            },
                            orElse: () => const SliverFillRemaining(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void showSeedDataScreen(BuildContext context) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (_) => const SeedDataScreen(),
    );
    if (context.mounted) {
      context.read<FoodItemsBloc>().add(const FoodItemsEvent.started());
    }
  }
}
