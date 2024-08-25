// lib/features/table/presentation/screens/table_list_screen.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant/di/injector.dart';

import '../bloc/table_bloc.dart';

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
        middle: Text('Tables on ${widget.selectedDateTime.toLocal()}'),
      ),
      child: SafeArea(
        child: BlocBuilder<TableBloc, TableState>(
          bloc: tableBloc,
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
                    title: Text('Table ${table.id}'),
                    subtitle: Text('Chairs: ${table.chairs}'),
                    trailing: Text(
                      table.status == 'available'
                          ? 'Available'
                          : table.status == 'reserved_by_user'
                              ? 'Reserved by You'
                              : 'Reserved',
                    ),
                    onTap: table.status == 'available'
                        ? () => _showReservationModal(context, table.id)
                        : table.status == 'reserved_by_user'
                            ? () => tableBloc.add(TableEvent.cancelReservation(
                                table.id, widget.selectedDateTime))
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

  void _showReservationModal(BuildContext context, String tableId) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('Reserve Table $tableId'),
          message: CupertinoTextField(
            placeholder: 'Enter your name',
            onSubmitted: (username) {
              tableBloc.add(TableEvent.reserveTable(
                  tableId, username, widget.selectedDateTime));
              Navigator.pop(context);
            },
          ),
          actions: [
            CupertinoActionSheetAction(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
