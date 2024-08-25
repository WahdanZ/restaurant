import 'package:dio/dio.dart';

import '../index.dart';

/// A class representing a network task that uses Dio for making HTTP requests.
/// This class extends [NetworkTask] to provide Dio-specific error handling.
class DioNetworkTask<T extends Object> extends NetworkTask<T> {
  /// Constructs a [DioNetworkTask] with the given [FutureTask].
  DioNetworkTask(super.task);

  /// Maps an error to a [CustomResult] of type [T] using Dio-specific error handling.
  ///
  /// If the error is a [DioException], it checks the type of exception and maps it
  /// to a corresponding [NetworkFailure]. If the error is not a [DioException],
  /// it delegates to the [onError] method of the superclass.
  ///
  /// - [error] is the error that occurred during the network request.
  /// - [networkErrorMapping] is an optional function to map Dio-specific errors.
  /// - [errorMapping] is an optional function to map other types of errors.
  ///
  /// Returns a [CustomResult] of type [T] representing either a success or failure.
  @override
  CustomResult<T> onErrorMapping(
    dynamic error,
    NetworkErrorMapping<T>? networkErrorMapping,
    ErrorMapping? errorMapping,
    StackTrace stackTrace,
  ) {
    logger.e('Error occurred: $error');

    if (error is DioException) {
      return _handleDioException(error, networkErrorMapping, errorMapping);
    }

    return onError(error, stackTrace);
  }

  CustomResult<T> _handleDioException(
    DioException error,
    NetworkErrorMapping<T>? networkErrorMapping,
    ErrorMapping? errorMapping,
  ) {
    switch (error.type) {
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionTimeout:
        return noInternet();
      default:
        if (error.response?.statusCode != null) {
          return networkErrorMapping?.call(error, errorMapping) ??
              _defaultNetworkErrorMapping(error, errorMapping);
        }
        return Failure<T>(const NetworkFailure.unknown());
    }
  }

  /// Returns a [CustomResult] representing a no internet connection error.
  CustomResult<T> noInternet() {
    return Failure<T>(const NetworkFailure.noInternet());
  }

  /// Default mapping for Dio-specific errors to [CustomResult].
  ///
  /// - [error] is the Dio exception that occurred.
  /// - [errorMapping] is an optional function to map the error to a [NetworkFailure].
  ///
  /// Returns a [CustomResult] of type [T] representing a failure.
  CustomResult<T> _defaultNetworkErrorMapping(
    DioException error,
    ErrorMapping? errorMapping,
  ) {
    final statusCode = error.response?.statusCode ?? -1;
    final errorMessage = errorMapping?.call(
          error.response?.data as Map<String, dynamic>?,
          code: statusCode,
        ) ??
        NetworkFailure.api(message: error.response?.data);

    switch (statusCode) {
      case 401:
        return Failure<T>(NetworkFailure.unAuthorized(message: errorMessage));
      default:
        return Failure<T>(errorMessage);
    }
  }
}
