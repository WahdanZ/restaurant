import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/common/screen/seed_data/seed_data.dart'; // For using SnackBar

class SeedDataScreen extends StatelessWidget {
  final SeedData seedData = SeedData();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Seed Data'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton.filled(
                child: Text('Seed Food Items'),
                onPressed: () async {
                  await seedData.seedFoodItems();
                  _showSnackBar(context, 'Seeded 50 Food Items!');
                },
              ),
              SizedBox(height: 16),
              CupertinoButton.filled(
                child: Text('Seed Tables'),
                onPressed: () async {
                  await seedData.seedTables();
                  _showSnackBar(context, 'Seeded 10 Tables!');
                },
              ),
              SizedBox(height: 16),
              CupertinoButton.filled(
                child: Text('Seed Reservations'),
                onPressed: () async {
                  await seedData.seedTableReservations();
                  _showSnackBar(context, 'Seeded 30 Reservations!');
                },
              ),
              SizedBox(height: 32),
              CupertinoButton(
                child: Text('Reset and Seed All Data'),
                color: CupertinoColors.systemRed,
                onPressed: () async {
                  await seedData.resetAndSeedData();
                  _showSnackBar(context, 'All Data Reset and Seeded!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
