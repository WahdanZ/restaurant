import 'package:injectable/injectable.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/base/remote/firebase_network_task.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/table_model.dart';

abstract class TableRemoteDataSource {
  Future<CustomResult<List<TableModel>>> getTables();
}

@LazySingleton(as: TableRemoteDataSource)
class TableFireStoreRemoteDataSourceImpl implements TableRemoteDataSource {
  final NetworkTaskManager networkTask;

  TableFireStoreRemoteDataSourceImpl({required this.networkTask});

  @override
  Future<CustomResult<List<TableModel>>> getTables() async {
    final task = FirebaseNetworkTask(() async {
      final querySnapshot = await tableCollectionRef.get();
      final tables = querySnapshot.docs;
      return tables.map((table) {
        return table.data;
      }).toList();
    });
    return networkTask.executeTask(task);
  }
}
