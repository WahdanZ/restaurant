import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:restaurant/base/logger/logger.dart';

class SeedData {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final faker = Faker();

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

  Future<void> seedFoodItems() async {
    logger.i('Seeding 50 food items...');
    final foodItemsCollection = firestore.collection('food_items');

    for (int i = 0; i < 50; i++) {
      final foodItem = {
        'name': faker.food.dish(),
        'description': faker.lorem.sentence(),
        'price': faker.randomGenerator.decimal(min: 5, scale: 50),
        'image_url': 'https://via.placeholder.com/150', // Placeholder image
        'category': faker.food.cuisine(),
      };
      await foodItemsCollection.add(foodItem);
      logger.d('Seeded food item: $foodItem');
    }

    logger.i('Seeded 50 food items.');
  }

  Future<void> seedTables() async {
    final tablesCollection = firestore.collection('tables');

    for (int i = 1; i <= 10; i++) {
      final table = {
        'id': i.toString(),
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
}
