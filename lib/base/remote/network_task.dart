import 'dart:isolate';

import '../index.dart';

typedef NetworkCallFunction<T> = Future<T> Function();
typedef ErrorMapping = NetworkFailure Function(Map<String, dynamic>? map,
    {int? code});
typedef NetworkErrorMapping<T extends Object> = CustomResult<T> Function(
    Exception e, ErrorMapping? errorMapping);
typedef FutureTask<T> = Future<T> Function();

/// Abstract class representing a network task that returns a result of type [T].
/// [T] must extend [Object] to ensure type safety.
abstract class NetworkTask<T extends Object> {
  /// Constructor accepting a [FutureTask] of type [T].
  NetworkTask(this._task);

  final FutureTask<T> _task;

  /// Executes the network task and returns a [CustomResult] of type [T].
  /// Optionally accepts a [networkErrorMapping] function to map [Exception] errors,
  /// and an [errorMapping] function to map other types of errors.
  /// If [useIsolate] is true, the task will run in an isolate.
  Future<CustomResult<T>> execute({
    NetworkErrorMapping<T>? networkErrorMapping,
    ErrorMapping? errorMapping,
    bool useIsolate = false,
  }) async {
    try {
      final response =
          useIsolate ? await Isolate.run(() => _task()) : await _task();
      logger.i('Response type: ${T.runtimeType}');
      return Success<T>(response);
    } catch (error, stackTrace) {
      logger.e('Error occurred: $error', error: error, stackTrace: stackTrace);
      return onErrorMapping(
          error, networkErrorMapping, errorMapping, stackTrace);
    }
  }

  /// Maps an error to a [CustomResult] of type [T] using the provided error mapping functions.
  /// This method should be implemented by subclasses to handle specific error mapping logic.
  CustomResult<T> onErrorMapping(
    dynamic error,
    NetworkErrorMapping<T>? networkErrorMapping,
    ErrorMapping? errorMapping,
    StackTrace stackTrace,
  );

  /// Helper function to log an error and return a [Failure] result with an unknown error type.
  CustomResult<T> onError(dynamic error, StackTrace stackTrace) {
    logger.e('Unhandled error type: ${T.runtimeType}',
        error: error, stackTrace: stackTrace);
    return Failure<T>(const NetworkFailure.unknown());
  }
}