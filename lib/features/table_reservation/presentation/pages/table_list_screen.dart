import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant/di/injector.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';
import 'package:restaurant/features/table_reservation/presentation/bloc/table_bloc.dart';
import 'package:restaurant/features/table_reservation/presentation/widget/table_reservation_sheet.dart';

class TableListScreen extends StatefulWidget {
  final DateTime selectedDateTime;

  const TableListScreen({super.key, required this.selectedDateTime});

  @override
  State<TableListScreen> createState() => _TableListScreenState();
}

class _TableListScreenState extends State<TableListScreen> {
  late TableBloc tableBloc;
  @override
  void initState() {
    super.initState();
    tableBloc = inject()..add(TableEvent.fetchTables(widget.selectedDateTime));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: 'Back',
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/');
            }
          },
        ),
        middle: Text('Tables on ${_getFormattedDate(widget.selectedDateTime)}'),
      ),
      child: SafeArea(
        child: BlocConsumer<TableBloc, TableState>(
          bloc: tableBloc,
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              reserved: (tableId) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text('Table Reserved'),
                      content: Text('Table $tableId reserved successfully.'),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              error: (message) {
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text('Error'),
                      content: Text(message),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
          buildWhen: (previous, current) {
            return current is! Reserved;
          },
          builder: (context, state) {
            if (state is Loading) {
              return const Center(child: CupertinoActivityIndicator());
            } else if (state is Error) {
              return Center(child: Text(state.message));
            } else if (state is Loaded) {
              return ListView.builder(
                itemCount: state.tables.length,
                itemBuilder: (context, index) {
                  final table = state.tables[index];
                  return CupertinoListTile(
                    title: Text('Table ${table.name}'),
                    subtitle: Text('Chairs: ${table.chairs}'),
                    trailing: Text(
                      table.status.name,
                    ),
                    onTap: table.status == TableStatus.available
                        ? () => _showReservationModal(context, table)
                        : table.status == TableStatus.reservedByMe
                            ? () => _showCancelReservationDialog(context, table)
                            : null,
                  );
                },
              );
            } else {
              return const Center(child: Text('No tables available.'));
            }
          },
        ),
      ),
    );
  }

  _showCancelReservationDialog(BuildContext context, TableEntity table) async {
    await showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Cancel Reservation'),
          content: Text(
              'Do you want to cancel your reservation for Table ${table.name}?'),
          actions: [
            CupertinoDialogAction(
              child: const Text('Yes'),
              onPressed: () {
                tableBloc.add(
                    TableEvent.cancelReservation(table.reservationId ?? ''));
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: const Text('No'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
    tableBloc.add(TableEvent.fetchTables(widget.selectedDateTime));
  }

  void _showReservationModal(BuildContext context, TableEntity table) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return TableReservationSheet(
          tableId: table.name,
          onSubmit: (userName) {
            tableBloc.add(TableEvent.reserveTable(
              table: table,
              date: widget.selectedDateTime,
              username: userName,
            ));
          },
        );
      },
    );
    tableBloc.add(TableEvent.fetchTables(widget.selectedDateTime));
  }

  String _getFormattedDate(DateTime selectedDateTime) {
    return '${selectedDateTime.year}-${selectedDateTime.month}-${selectedDateTime.day} : ${selectedDateTime.hour}:${selectedDateTime.minute}';
  }
}
