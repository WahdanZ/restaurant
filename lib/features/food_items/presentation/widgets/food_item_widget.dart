import 'package:flutter/cupertino.dart';
import 'package:restaurant/features/food_items/domain/entities/food_item_entity.dart';

class FoodItemWidget extends StatelessWidget {
  final FoodItemEntity foodItem;

  const FoodItemWidget({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup(
          context: context,
          builder: (popContext) => CupertinoActionSheet(
            title: Text(foodItem.name),
            message: Text(foodItem.description),
            actions: [
              CupertinoActionSheetAction(
                onPressed: () => Navigator.pop(popContext),
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: CupertinoColors.systemBackground.resolveFrom(context),
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  foodItem.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodItem.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      foodItem.price.toString(),
                      style: const TextStyle(
                        color: CupertinoColors.systemGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
