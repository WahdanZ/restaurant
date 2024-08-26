import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:restaurant/features/food_items/data/models/food_item.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/reservation_model.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/table_model.dart';

import '../../../base/index.dart';

class SeedData {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final faker = Faker();
  String getRandomFoodImageUrl(String keyword) {
    return 'https://loremflickr.com/320/240/food,$keyword';
  }

  Future<void> seedFoodItems() async {
    for (int i = 0; i < 50; i++) {
      final name = faker.food.dish();
      final cuisine = faker.food.cuisine();
      await foodItemCollectionRef.add(FoodItem(
        name: name,
        id: Random().nextInt(1000).toString(),
        description: faker.lorem.sentence(),
        price: faker.randomGenerator.integer(100, min: 10).toDouble(),
        imageUrl: getRandomFoodImageUrl(name.replaceAll(' ', ',')),
        category: cuisine,
      ));
    }

    logger.i('Seeded 50 food items with random images.');
  }

  Future<void> seedTables() async {
    for (int i = 1; i <= 10; i++) {
      await tableCollectionRef.add(
        TableModel(
          id: i.toString(),
          name: 'Table $i',
          chairs: faker.randomGenerator.integer(6, min: 2),
        ),
      );
    }

    logger.i('Seeded 10 tables.');
  }

  Future<void> seedTableReservations() async {
    for (int i = 0; i < 30; i++) {
      reservationCollectionRef.add(
        ReservationModel(
          id: i.toString(),
          tableId: Random().nextInt(10).toString(),
          userId: Random().nextInt(1000).toString(),
          username: faker.person.name(),
          startTime: DateTime.now().add(Duration(days: Random().nextInt(10))),
          endTime: DateTime.now().add(Duration(days: Random().nextInt(10))),
        ),
      );
    }

    logger.i('Seeded 30 fake reservations.');
  }

  Future<void> resetAndSeedData() async {
    await _clearCollection('food_items');
    await _clearCollection('tables');
    await _clearCollection('table_reservations');

    await seedFoodItems();
    await seedTables();
    await seedTableReservations();

    logger.i('Data reset and seeded successfully.');
  }

  Future<void> _clearCollection(String collectionPath) async {
    final collection = firestore.collection(collectionPath);
    final snapshots = await collection.get();
    for (var doc in snapshots.docs) {
      await doc.reference.delete();
    }
    logger.i('Cleared $collectionPath collection.');
  }
}
