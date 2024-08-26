import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant/base/index.dart';

class TableReservationScreen extends StatefulWidget {
  const TableReservationScreen({super.key});

  @override
  State<TableReservationScreen> createState() => _TableReservationScreenState();
}

class _TableReservationScreenState extends State<TableReservationScreen> {
  DateTime selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Select Date & Time'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Selected Date & Time:',
              style: TextStyle(fontSize: 16, color: CupertinoColors.systemGrey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                selectedDateTime.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  minimumDate: DateTime.now(), // Disable past dates and times
                  use24hFormat: true, // Use 24-hour format for time
                  onDateTimeChanged: (DateTime newDateTime) {
                    setState(() {
                      selectedDateTime = newDateTime;
                    });
                    logger.i('Date & Time changed to: $newDateTime');
                  },
                ),
              ),
            ),
            const SizedBox(height: 32),
            CupertinoButton.filled(
              child: const Text('CTA: Check Tables'),
              onPressed: () {
                logger.i(
                    'Navigating to tables with selected date & time: $selectedDateTime');

                GoRouter.of(context)
                    .go('/reservation/tables/$selectedDateTime');
              },
            ),
          ],
        ),
      ),
    );
  }
}
