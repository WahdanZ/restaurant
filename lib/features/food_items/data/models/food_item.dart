import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_item.g.dart';

@Collection<FoodItem>('food_items')
final foodItemCollectionRef = FoodItemCollectionReference();

@JsonSerializable()
class FoodItem {
  FoodItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
  });

  final String name;
  final String description;
  final double price;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String category;

  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);
  Map<String, dynamic> toJson() => _$FoodItemToJson(this);
}
