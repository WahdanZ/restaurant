import 'package:flutter/cupertino.dart';

class TableReservationSheet extends StatefulWidget {
  final Function(String userName) onSubmit;
  final String tableId;

  const TableReservationSheet({
    super.key,
    required this.tableId,
    required this.onSubmit, // Accept callback
  });

  @override
  State<TableReservationSheet> createState() => _TableReservationSheetState();
}

class _TableReservationSheetState extends State<TableReservationSheet> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text('Reserve Table ${widget.tableId}'),
      message: Column(
        children: [
          CupertinoTextField(
            controller: _textController,
            placeholder: 'Enter your name',
          ),
        ],
      ),
      actions: [
        // Submit Button
        CupertinoActionSheetAction(
          child: const Text('Reserve'),
          onPressed: () {
            String userName = _textController.text.trim();
            if (userName.isEmpty) {
              userName = 'Anonymous';
            }

            widget.onSubmit(userName);

            Navigator.pop(context);
          },
        ),
        // Cancel Button
        CupertinoActionSheetAction(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
