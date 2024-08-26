import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant/features/food_items/presentation/screens/food_item_details_screen.dart';
import 'package:restaurant/features/food_items/presentation/screens/food_items_screen.dart';
import 'package:restaurant/features/home/home.dart';
import 'package:restaurant/features/table_reservation/presentation/pages/table_list_screen.dart';
import 'package:restaurant/features/table_reservation/presentation/pages/table_reservation_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/food_items',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return HomePage(child: child); // Use HomePage to handle tab navigation
      },
      routes: [
        GoRoute(
          path: '/food_items',
          pageBuilder: (context, state) => const CupertinoPage(
            child: FoodItemsScreen(),
          ),
          routes: [
            GoRoute(
              path: 'details/:id',
              pageBuilder: (context, state) {
                final id = state.pathParameters['id']!;
                return CupertinoPage(child: FoodItemDetailsScreen(id: id));
              },
            ),
          ],
        ),
        GoRoute(
          path: '/reservation',
          pageBuilder: (context, state) => const CupertinoPage(
            child: TableReservationScreen(),
          ),
          routes: [
            GoRoute(
              path: 'tables/:selectedDateTime',
              pageBuilder: (context, state) {
                final selectedDateTime = state
                            .pathParameters['selectedDateTime'] ==
                        null
                    ? DateTime.now()
                    : DateTime.parse(state.pathParameters['selectedDateTime']!);
                return CupertinoPage(
                  child: TableListScreen(selectedDateTime: selectedDateTime),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
