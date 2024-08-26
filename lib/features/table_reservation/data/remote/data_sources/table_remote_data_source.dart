import 'package:injectable/injectable.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/base/remote/firebase_network_task.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/reservation_model.dart';
import 'package:restaurant/features/table_reservation/data/remote/model/table_model.dart';

abstract class TableRemoteDataSource {
  Future<CustomResult<List<TableModel>>> getTables();
  Future<CustomResult<ReservationModel>> reserveTable({
    required String tableId,
    required String userId,
    required String username,
    required DateTime startDate,
    required DateTime endDate,
  });
  Future<CustomResult<List<ReservationModel>>> getReservationsForTableAndTime(
      {required DateTime startTime, required DateTime endTime});

  Future<CustomResult<bool>> cancelReservation(String reservationId);
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

  @override
  Future<CustomResult<ReservationModel>> reserveTable(
      {required String tableId,
      required String userId,
      required String username,
      required DateTime startDate,
      required DateTime endDate}) async {
    final task = FirebaseNetworkTask(() async {
      final reservation = ReservationModel(
        id: '',
        tableId: tableId,
        userId: userId,
        username: username,
        startTime: startDate,
        endTime: endDate,
      );
      final docRef = await reservationCollectionRef.add(reservation);
      final docSnapshot = await docRef.get();
      return docSnapshot.data!;
    });
    return networkTask.executeTask(task);
  }

  @override
  Future<CustomResult<List<ReservationModel>>> getReservationsForTableAndTime({
    required DateTime startTime,
    required DateTime endTime,
  }) {
    final task = FirebaseNetworkTask(() async {
      final querySnapshot = await reservationCollectionRef
          .whereEndTime(isGreaterThanOrEqualTo: startTime)
          .whereStartTime(isLessThanOrEqualTo: endTime)
          .get();

      return querySnapshot.docs.map((doc) => doc.data).toList();
    });

    return networkTask.executeTask(task);
  }

  @override
  Future<CustomResult<bool>> cancelReservation(String reservationId) {
    final task = FirebaseNetworkTask(() async {
      await reservationCollectionRef.doc(reservationId).delete();
      return true;
    });

    return networkTask.executeTask(task);
  }
}
