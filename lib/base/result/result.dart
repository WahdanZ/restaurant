// Defining the sealed class CustomResult
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

/// A sealed class representing a custom result, which can be either a success or a failure.
/// [T] must extend [Object] to ensure type safety.
sealed class CustomResult<T extends Object> {
  const CustomResult();

  /// Executes the appropriate function based on whether the result is a success or a failure.
  ///
  /// - [success]: The function to execute if the result is a [Success].
  /// - [failure]: The function to execute if the result is a [Failure].
  ///
  /// Returns the result of the executed function.
  R when<R>({
    required R Function(T result) success,
    required R Function(NetworkFailure error) failure,
  }) {
    switch (this) {
      case Success<T> successResult:
        return success(successResult.result);
      case Failure<T> failureResult:
        return failure(failureResult.error);
    }
  }
}

/// A class representing a successful result.
/// Extends [CustomResult] and includes the result of type [T].
final class Success<T extends Object> extends CustomResult<T>
    with EquatableMixin {
  final T result;

  const Success(this.result);

  @override
  List<Object?> get props => [result];
}

/// A class representing a failed result.
/// Extends [CustomResult] and includes an error of type [NetworkFailure].
final class Failure<T extends Object> extends CustomResult<T>
    with EquatableMixin {
  final NetworkFailure error;

  const Failure(this.error);

  @override
  List<Object?> get props => [error];
}

/// Extension methods for [CustomResult] to provide convenience checks.
extension CustomResultX<T extends Object> on CustomResult<T> {
  /// Returns true if the result is a success.
  bool get isSuccess => this is Success<T>;

  /// Returns true if the result is a failure.
  bool get isFailure => this is Failure<T>;
}

/// Extension methods for [Future<CustomResult>] to provide mapping functions.
extension FutureCustomResultX<T extends Object> on Future<CustomResult<T>> {
  /// Maps a successful result to a new type [B] using the provided function [f].
  ///
  /// - [f]: The function to transform the result of type [T] to type [B].
  ///
  /// Returns a [Future] containing the transformed [CustomResult].
  Future<CustomResult<B>> map<B extends Object>(B Function(T) f) async {
    final value = await this;
    return value.when(
      success: (data) => Success<B>(f(data)),
      failure: (error) => Failure<B>(error),
    );
  }

  /// Maps a successful result to a new type [B] using an asynchronous function [f].
  ///
  /// - [f]: The asynchronous function to transform the result of type [T] to type [B].
  ///
  /// Returns a [Future] containing the transformed [CustomResult].
  Future<CustomResult<B>> flatMap<B extends Object>(
      Future<B> Function(T) f) async {
    final value = await this;
    return value.when(
      success: (data) async => Success<B>(await f(data)),
      failure: (error) => Failure<B>(error),
    );
  }

  /// Maps a failure to a new failure using the provided function [f].
  ///
  /// - [f]: The function to transform the [NetworkFailure] to another [NetworkFailure].
  ///
  /// Returns a [Future] containing the transformed [CustomResult].
  Future<CustomResult<T>> mapFailure(
      NetworkFailure Function(NetworkFailure) f) async {
    final value = await this;
    return value.when(
      success: (data) => Success<T>(data),
      failure: (error) => Failure<T>(f(error)),
    );
  }
}
