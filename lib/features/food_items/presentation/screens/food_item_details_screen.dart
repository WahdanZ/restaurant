import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant/di/injector.dart';
import 'package:restaurant/features/food_items/presentation/bloc/food_item_details/food_items_details_bloc.dart';

class FoodItemDetailsScreen extends StatelessWidget {
  final String id;

  const FoodItemDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: 'Back',
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/');
            }
          },
        ),
        middle: const Text('Food Item Details'),
      ),
      child: BlocProvider(
        create: (context) => inject<FoodItemsDetailsBloc>()
          ..add(FoodItemsDetailsEvent.getFoodItemDetails(id)),
        child: BlocBuilder<FoodItemsDetailsBloc, FoodItemsDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CupertinoActivityIndicator(),
              ),
              loading: () => const Center(
                child: CupertinoActivityIndicator(),
              ),
              loaded: (foodItem) => SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        foodItem.imageUrl,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                          CupertinoIcons.photo,
                          size: 100,
                          color: CupertinoColors.systemGrey,
                        ),
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Name of the food item
                    Text(
                      foodItem.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),

                    // Price of the food item
                    Text(
                      '${foodItem.price.toStringAsFixed(2)}€',
                      style: const TextStyle(
                        fontSize: 22,
                        color: CupertinoColors.systemGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Description of the food item
                    Text(
                      foodItem.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.systemGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              error: () => const Center(
                child: Text(
                  'Failed to load food item details',
                  style: TextStyle(color: CupertinoColors.systemRed),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
