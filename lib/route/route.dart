import 'package:go_router/go_router.dart';
import 'package:restaurant/features/food_items/presentation/screens/food_item_details_screen.dart';
import 'package:restaurant/features/food_items/presentation/screens/food_items_screen.dart';
import 'package:restaurant/features/table_reservation/presentation/pages/table_list_screen.dart';
import 'package:restaurant/features/table_reservation/presentation/pages/table_reservation_screen.dart';
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
    GoRoute(
      path: '/reservation',
      name: 'reservation',
      builder: (context, state) => const TableReservationScreen(),
    ),
    GoRoute(
      path: '/tables',
      name: 'tables',
      builder: (context, state) {
        final selectedDateTime = state.extra as DateTime;
        return TableListScreen(selectedDateTime: selectedDateTime);
      },
    ),
  ],
);
