import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';

import '../../../base/index.dart';

class SeedData {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final faker = Faker();
  String getRandomFoodImageUrl(String keyword) {
    return 'https://loremflickr.com/320/240/food,$keyword';
  }

  Future<void> seedFoodItems() async {
    final foodItemsCollection = firestore.collection('food_items');

    for (int i = 0; i < 50; i++) {
      final name = faker.food.dish();

      final foodItem = {
        'name': name,
        'description': faker.lorem.sentence(),
        'price': faker.randomGenerator.integer(50, min: 5),
        'image_url': getRandomFoodImageUrl(name.replaceAll(' ', ',')),
        'category': faker.food.cuisine(),
      };

      await foodItemsCollection.add(foodItem);
    }

    logger.i('Seeded 50 food items with random images.');
  }

  Future<void> seedTables() async {
    final tablesCollection = firestore.collection('tables');

    for (int i = 1; i <= 10; i++) {
      final table = {
        'id': i.toString(),
        'name': 'Table $i',
        'chairs': faker.randomGenerator.integer(6, min: 2),
      };
      await tablesCollection.add(table);
    }

    logger.i('Seeded 10 tables.');
  }

  Future<void> seedTableReservations() async {
    final reservationsCollection = firestore.collection('table_reservations');

    for (int i = 0; i < 30; i++) {
      final reservation = {
        'table_id': faker.randomGenerator.integer(10, min: 1).toString(),
        'user_id': faker.guid.guid(),
        'username': faker.person.name(),
        'date': Timestamp.fromDate(
            faker.date.dateTime(minYear: 2023, maxYear: 2024)),
      };
      await reservationsCollection.add(reservation);
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
