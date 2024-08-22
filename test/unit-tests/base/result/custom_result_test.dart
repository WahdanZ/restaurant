import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant/base/error/failure.dart';
import 'package:restaurant/base/result/index.dart';

// Assuming you have imported your CustomResult and related classes/extensions here

class CustomResultTest {
  Future<CustomResult<String>> fetchDataSuccess() async {
    return const Success("Fetched data");
  }

  Future<CustomResult<String>> fetchDataFailure() async {
    return const Failure(NetworkFailure.api(message: "API Error"));
  }
}

void main() {
  group('CustomResult', () {
    test('Success when method', () {
      const result = Success("Fetched data");
      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: $error",
      );
      expect(response, equals("Success: Fetched data"));
    });

    test('Failure when method', () {
      const result = Failure(NetworkFailure.api(message: "API Error"));
      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: ${error.message}",
      );
      expect(response, equals("Failure: API Error"));
    });

    test('isSuccess and isFailure checks', () {
      const successResult = Success("Fetched data");
      const failureResult = Failure(NetworkFailure.api(message: "API Error"));

      expect(successResult.isSuccess, isTrue);
      expect(successResult.isFailure, isFalse);

      expect(failureResult.isSuccess, isFalse);
      expect(failureResult.isFailure, isTrue);
    });
  });

  group('FutureCustomResultX', () {
    test('map extension transforms success result', () async {
      final result = await CustomResultTest()
          .fetchDataSuccess()
          .map((data) => "Mapped $data");

      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: $error",
      );
      expect(response, equals("Success: Mapped Fetched data"));
    });

    test('map extension retains failure result', () async {
      final result = await CustomResultTest()
          .fetchDataFailure()
          .map((data) => "Mapped $data");

      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: ${error.message}",
      );
      expect(response, equals("Failure: API Error"));
    });

    test('flatMap extension transforms success result', () async {
      final result = await CustomResultTest()
          .fetchDataSuccess()
          .flatMap((data) => Future.value("Mapped $data"));

      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: $error",
      );
      expect(response, equals("Success: Mapped Fetched data"));
    });

    test('flatMap extension retains failure result', () async {
      final result = await CustomResultTest()
          .fetchDataFailure()
          .flatMap((data) => Future.value("Mapped $data"));

      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: ${error.message}",
      );
      expect(response, equals("Failure: API Error"));
    });

    test('mapFailure extension transforms failure', () async {
      final result = await CustomResultTest().fetchDataFailure().mapFailure(
          (error) =>
              NetworkFailure.api(message: "Transformed ${error.message}"));

      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: ${error.message}",
      );
      expect(response, equals("Failure: Transformed API Error"));
    });

    test('mapFailure extension retains success', () async {
      final result = await CustomResultTest().fetchDataSuccess().mapFailure(
          (error) =>
              NetworkFailure.api(message: "Transformed ${error.message}"));

      final response = result.when(
        success: (data) => "Success: $data",
        failure: (error) => "Failure: $error",
      );
      expect(response, equals("Success: Fetched data"));
    });
  });
}
