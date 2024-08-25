import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';

class FakeTask extends Mock {
  Future<String> getFakeData();
}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeTask());
  });

  group('NetworkTaskManager Tests', () {
    test('should execute task successfully when not locked', () async {
      final manager = NetworkTaskManager();
      final fakeTask = FakeTask();

      when(() => fakeTask.getFakeData()).thenAnswer((_) async => "Success");

      final result = await manager.executeTask(
        DioNetworkTask(() => fakeTask.getFakeData()),
      );

      expect(result.isSuccess, isTrue);
      expect((result as Success).result, "Success");
    });

    test('should lock and unlock network requests', () async {
      final manager = NetworkTaskManager();
      final fakeTask = FakeTask();

      when(() => fakeTask.getFakeData()).thenAnswer((_) async => "Success");

      manager.lock();

      final resultFuture = manager.executeTask(
        DioNetworkTask(() => fakeTask.getFakeData()),
      );

      var isPending = true;
      resultFuture.then((_) => isPending = false);
      await Future.delayed(const Duration(milliseconds: 100));
      expect(isPending, isTrue);

      manager.unlock();

      final result = await resultFuture;

      expect(result.isSuccess, isTrue);
      expect((result as Success).result, "Success");
    });

    test('should handle multiple tasks with locking and unlocking', () async {
      final manager = NetworkTaskManager();
      final fakeTask1 = FakeTask();
      final fakeTask2 = FakeTask();

      when(() => fakeTask1.getFakeData()).thenAnswer((_) async => "Task1");
      when(() => fakeTask2.getFakeData()).thenAnswer((_) async => "Task2");

      manager.lock();

      final resultFuture1 = manager.executeTask(
        DioNetworkTask(() => fakeTask1.getFakeData()),
      );

      final resultFuture2 = manager.executeTask(
        DioNetworkTask(() => fakeTask2.getFakeData()),
      );

      var isPending1 = true;
      var isPending2 = true;
      resultFuture1.then((_) => isPending1 = false);
      resultFuture2.then((_) => isPending2 = false);
      await Future.delayed(const Duration(milliseconds: 100));
      expect(isPending1, isTrue);
      expect(isPending2, isTrue);

      manager.unlock();

      final result1 = await resultFuture1;
      final result2 = await resultFuture2;

      expect(result1.isSuccess, isTrue);
      expect((result1 as Success).result, "Task1");

      expect(result2.isSuccess, isTrue);
      expect((result2 as Success).result, "Task2");
    });

    test('should return failure if task throws an exception', () async {
      final manager = NetworkTaskManager();
      final fakeTask = FakeTask();

      when(() => fakeTask.getFakeData()).thenThrow(
        DioException(
            requestOptions: RequestOptions(path: ''),
            type: DioExceptionType.connectionTimeout),
      );

      final result = await manager.executeTask(
        DioNetworkTask(() => fakeTask.getFakeData()),
      );

      expect(result.isFailure, isTrue);
      expect((result as Failure).error, const NetworkFailure.noInternet());
    });
  });
}
