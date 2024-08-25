import 'package:go_router/go_router.dart';
import 'package:restaurant/features/food_items/presentation/screens/food_item_details_screen.dart';
import 'package:restaurant/features/food_items/presentation/screens/food_items_screen.dart';
import 'package:restaurant/main.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/food_items',
      builder: (context, state) => const FoodItemsScreen(),
    ),
    GoRoute(
      path: '/food_items/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return FoodItemDetailsScreen(id: id);
      },
    ),
  ],
);
