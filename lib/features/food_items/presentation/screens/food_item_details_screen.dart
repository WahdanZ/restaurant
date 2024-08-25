import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        middle: Text('Food Item Details'),
      ),
      child: BlocProvider(
        create: (context) => inject<FoodItemsDetailsBloc>()
          ..add(FoodItemsDetailsEvent.getFoodItemDetails(id)),
        child: BlocBuilder<FoodItemsDetailsBloc, FoodItemsDetailsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (foodItem) => Center(
                child: Column(
                  children: [
                    // image
                    Image.network(foodItem.imageUrl,
                        width: 200, height: 200, fit: BoxFit.cover),
                    Text(foodItem.name),
                    Text(foodItem.price.toString()),
                    Text(foodItem.description),
                  ],
                ),
              ),
              error: () => const Center(
                child: Text('Error'),
              ),
            );
          },
        ),
      ),
    );
  }
}
