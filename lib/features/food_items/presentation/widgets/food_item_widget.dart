import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

class FoodItemWidget extends StatelessWidget {
  final FoodItemEntity foodItem;

  const FoodItemWidget({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/food_items/details/${foodItem.id}');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CupertinoPopupSurface(
          isSurfacePainted: true,
          child: Container(
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(
                          foodItem.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(
                            child: Icon(
                              CupertinoIcons.photo,
                              size: 50,
                              color: CupertinoColors.systemGrey,
                            ),
                          ),
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return const Center(
                                child: CupertinoActivityIndicator(),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        foodItem.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${foodItem.price.toStringAsFixed(2)}\€', // Formatting the price for better UX
                        style: const TextStyle(
                          color: CupertinoColors.systemGreen,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
