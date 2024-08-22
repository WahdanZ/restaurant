import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/base/index.dart';
import 'package:restaurant/base/remote/dio_network_task.dart';

// Mock class for the FakeTask
class FakeTask extends Mock {
  Future<String> getFakeData();
}

void main() {
  // Setting up necessary mocks and fallbacks
  setUpAll(() {
    registerFallbackValue(FakeTask());
  });

  group("Network Task Test", () {

     test('Execute task using isolate', () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to return "Isolate Task"
      when(() => fakeTask.getFakeData())
          .thenAnswer((_) async => "Isolate Task");

      // Executing the network task using isolate
      final result = await DioNetworkTask<String>(() => fakeTask.getFakeData())
          .execute(useIsolate: true);

      // Asserting that the result is a Success with the correct data
      expect(result, equals(const Success<String>("Isolate Task")));
    });

    test('Return Failure when using isolate', () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw an error
      when(() => fakeTask.getFakeData()).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.badResponse,
      ));

      // Executing the network task using isolate
      final result = await DioNetworkTask<String>(() => fakeTask.getFakeData())
          .execute(useIsolate: true);

      // Asserting that the result is a Failure
      expect(result.isFailure, isTrue);
    });
    // Test case for a successful network call
    test('Return CustomResult with data if there is no error', () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to return "Okay"
      when(() => fakeTask.getFakeData()).thenAnswer((_) async => "Okay");

      // Executing the network task
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute();

      // Asserting that the result is a CustomResult with the expected data
      expect(result, equals(const Success<String>("Okay")));
    });

    // Test case for a successful network call with different data
    test('Return CustomResult with different data if there is no error',
        () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to return "Okay"
      when(() => fakeTask.getFakeData()).thenAnswer((_) async => "Okay");

      // Executing the network task
      final result =
          await (DioNetworkTask<String>(() => fakeTask.getFakeData()).execute())
              .map((data) => "Mapped $data");

      // Asserting that the result is a CustomResult with the mapped data
      expect(result, equals(const Success<String>("Mapped Okay")));
    });

    // Test case for handling connection timeout error
    test('Return Failure of No Internet connection if connection timeout',
        () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw a DioException with connection timeout type
      when(() => fakeTask.getFakeData()).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.connectionTimeout,
      ));

      // Executing the network task
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute();

      // Asserting that the result is a CustomResult with Failure.noInternet
      expect(
          result, equals(const Failure<String>(NetworkFailure.noInternet())));
    });

    // Test case for handling unauthorized error
    test('Return Failure of Unauthorized if status code is 401', () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw a DioException with status code 401
      when(() => fakeTask.getFakeData()).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        response:
            Response(statusCode: 401, requestOptions: RequestOptions(path: '')),
      ));

      // Executing the network task
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute();

      // Asserting that the result is a CustomResult with Failure.unAuthorized
      expect(
          result,
          equals(const Failure<String>(
              NetworkFailure.unAuthorized(message: NetworkFailure.api()))));
    });

    // Test case for handling unknown error
    test('Return Failure of Unknown if unknown error occurs', () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw an unknown exception
      when(() => fakeTask.getFakeData()).thenThrow(Exception("Unknown error"));

      // Executing the network task
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute();
      // Asserting that the result is a CustomResult with Failure.unknown
      expect(result, equals(const Failure<String>(NetworkFailure.unknown())));
    });

// Test case for handling API error with custom error mapping
    test('Return CustomResult with custom error mapping if API error occurs',
        () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw a DioException with status code 500
      when(() => fakeTask.getFakeData()).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        response:
            Response(statusCode: 500, requestOptions: RequestOptions(path: '')),
      ));

      // Custom error mapping function
      NetworkFailure customErrorMapping(Map<String, dynamic>? map,
          {int? code}) {
        return const NetworkFailure.api(message: "Custom API error");
      }

      // Executing the network task with custom error mapping
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute(
        errorMapping: customErrorMapping,
      );

      // Asserting that the result is a CustomResult with custom API error
      expect(
          result,
          equals(const Failure<String>(
              NetworkFailure.api(message: "Custom API error"))));
    });

// Test case for handling server error (status code 500)
    test('Return Failure of API error if status code is 500', () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw a DioException with status code 500
      when(() => fakeTask.getFakeData()).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        response:
            Response(statusCode: 500, requestOptions: RequestOptions(path: '')),
      ));

      // Executing the network task
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute();

      // Asserting that the result is a CustomResult with Failure.api
      expect(result,
          equals(const Failure<String>(NetworkFailure.api(message: null))));
    });

// Test case for no internet connection
    test('Return Failure of No Internet connection if network error occurs',
        () async {
      final fakeTask = FakeTask();

      // Mocking the getFakeData method to throw a DioException indicating no internet connection
      when(() => fakeTask.getFakeData()).thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        type: DioExceptionType.receiveTimeout,
      ));

      // Executing the network task
      final result =
          await DioNetworkTask<String>(() => fakeTask.getFakeData()).execute();

      // Asserting that the result is a CustomResult with Failure.noInternet
      expect(
          result, equals(const Failure<String>(NetworkFailure.noInternet())));
    });
  });
}
