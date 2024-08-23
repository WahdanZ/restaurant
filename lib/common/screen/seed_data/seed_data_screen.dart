import 'package:flutter/cupertino.dart';
import 'package:restaurant/common/screen/seed_data/seed_data.dart';

class SeedDataScreen extends StatefulWidget {
  @override
  State<SeedDataScreen> createState() => _SeedDataScreenState();
}

class _SeedDataScreenState extends State<SeedDataScreen> {
  final SeedData seedData = SeedData();
  bool isSeeding = false;

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
              // text is seeding if isSeeding is true
              if (isSeeding) ...[
                const CupertinoActivityIndicator(),
                const SizedBox(height: 16),
                const Text('Seeding Data...'),
              ],
              CupertinoButton.filled(
                child: Text('Seed Food Items'),
                onPressed: isSeeding
                    ? null
                    : () async {
                        await seedData.seedFoodItems();
                        _showSnackBar(context, 'Seeded 50 Food Items!');
                      },
              ),
              SizedBox(height: 16),
              CupertinoButton.filled(
                child: Text('Seed Tables'),
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
                        await seedData.seedTables();
                        _showSnackBar(context, 'Seeded 10 Tables!');
                      },
              ),
              SizedBox(height: 16),
              CupertinoButton.filled(
                child: Text('Seed Reservations'),
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
                        await seedData.seedTableReservations();
                        _showSnackBar(context, 'Seeded 30 Reservations!');
                      },
              ),
              SizedBox(height: 32),
              CupertinoButton(
                child: Text('Reset and Seed All Data'),
                color: CupertinoColors.systemRed,
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
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
    setState(() {
      isSeeding = false;
    });
  }
}
