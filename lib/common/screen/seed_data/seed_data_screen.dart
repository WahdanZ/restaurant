import 'package:flutter/cupertino.dart';
import 'package:restaurant/common/screen/seed_data/seed_data.dart';

class SeedDataScreen extends StatefulWidget {
  const SeedDataScreen({super.key});
  @override
  State<SeedDataScreen> createState() => _SeedDataScreenState();
}

class _SeedDataScreenState extends State<SeedDataScreen> {
  final SeedData seedData = SeedData();
  bool isSeeding = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Seed Data'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isSeeding) ...[
                const CupertinoActivityIndicator(),
                const SizedBox(height: 16),
                const Text('Seeding Data...'),
              ],
              CupertinoButton.filled(
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
                        await seedData.seedFoodItems();
                        if (mounted) {
                          setState(() {
                            isSeeding = false;
                          });
                        }
                      },
                child: const Text('Seed Food Items'),
              ),
              const SizedBox(height: 16),
              CupertinoButton.filled(
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
                        await seedData.seedTables();
                        if (mounted) {
                          setState(() {
                            isSeeding = false;
                          });
                        }
                      },
                child: const Text('Seed Tables'),
              ),
              const SizedBox(height: 16),
              CupertinoButton.filled(
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
                        await seedData.seedTableReservations();
                        if (mounted) {
                          setState(() {
                            isSeeding = false;
                          });
                        }
                      },
                child: const Text('Seed Reservations'),
              ),
              const SizedBox(height: 32),
              CupertinoButton(
                color: CupertinoColors.systemRed,
                onPressed: isSeeding
                    ? null
                    : () async {
                        setState(() {
                          isSeeding = true;
                        });
                        await seedData.resetAndSeedData();
                        if (mounted) {
                          setState(() {
                            isSeeding = false;
                          });
                        }
                      },
                child: const Text('Reset and Seed All Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
