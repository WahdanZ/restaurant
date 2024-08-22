import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../index.dart';

/// A class representing a network task that uses Firebase for making requests.
/// This class extends [NetworkTask] to provide Firebase-specific error handling.
class FirebaseNetworkTask<T extends Object> extends NetworkTask<T> {
  /// Constructs a [FirebaseNetworkTask] with the given [FutureTask].
  FirebaseNetworkTask(super.task);

  /// Maps an error to a [CustomResult] of type [T] using Firebase-specific error handling.
  ///
  /// If the error is a [FirebaseException] or [FirebaseFirestoreException], it checks the error
  /// code and maps it to a corresponding [NetworkFailure]. If the error is not a Firebase exception,
  /// it delegates to the [onError] method of the superclass.
  ///
  /// - [error] is the error that occurred during the network request.
  /// - [networkErrorMapping] is an optional function to map Firebase-specific errors.
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
    logger.e('Error occurred: $error', error: error, stackTrace: stackTrace);

    if (error is FirebaseException) {
      return _handleFirebaseException(error, networkErrorMapping, errorMapping);
    }

    return onError(error, stackTrace);
  }

  /// Handles Firebase-specific errors and maps them to [CustomResult].
  ///
  /// - [error] is the Firebase exception that occurred.
  /// - [networkErrorMapping] is an optional function to map Firebase-specific errors.
  /// - [errorMapping] is an optional function to map other types of errors.
  ///
  /// Returns a [CustomResult] of type [T] representing a failure.
  CustomResult<T> _handleFirebaseException(
    FirebaseException error,
    NetworkErrorMapping<T>? networkErrorMapping,
    ErrorMapping? errorMapping,
  ) {
    switch (error.code) {
      case 'unavailable':
        return Failure<T>(
            const NetworkFailure.noInternet(message: 'No internet connection'));
      case 'permission-denied':
        return Failure<T>(
            const NetworkFailure.unAuthorized(message: 'Permission denied'));
      case 'deadline-exceeded':
      case 'cancelled':
        return Failure<T>(const NetworkFailure.timeout(
            message: 'Request timed out or was cancelled'));
      default:
        return networkErrorMapping?.call(error, errorMapping) ??
            _defaultFirebaseErrorMapping(error, errorMapping);
    }
  }

  /// Default mapping for Firebase-specific errors to [CustomResult].
  ///
  /// - [error] is the Firebase exception that occurred.
  /// - [errorMapping] is an optional function to map the error to a [NetworkFailure].
  ///
  /// Returns a [CustomResult] of type [T] representing a failure.
  CustomResult<T> _defaultFirebaseErrorMapping(
    FirebaseException error,
    ErrorMapping? errorMapping,
  ) {
    final errorMessage = errorMapping?.call(
          <String, dynamic>{'message': error.message, 'code': error.code},
        ) ??
        NetworkFailure.api(message: error.message);

    return Failure<T>(errorMessage);
  }
}
