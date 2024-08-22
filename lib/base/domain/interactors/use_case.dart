import 'dart:async';

// Project imports:
import 'package:equatable/equatable.dart';

import '../../result/result.dart';

/// Abstract class representing a use case that returns a [Future] of type [T].
/// [Params] is required by the [UseCase] to retrieve the appropriate data from the repository.
abstract class UseCase<T extends Object, P extends Params> {
  /// Builds the [Future] with the given [params].
  Future<T> buildUseCase(P params);

  /// Executes the use case with the given [params] and returns a [Future] of type [T].
  Future<T> execute({required P params}) async {
    return buildUseCase(params);
  }
}

/// Abstract class representing a use case that returns a [CustomResult] of type [T].
/// [Params] is required by the [UseCaseResult] to retrieve the appropriate data from the repository.
abstract class UseCaseResult<T extends Object, P extends Params> {
  /// Builds the [Future] with the given [params] and returns a [CustomResult] of type [T].
  Future<CustomResult<T>> buildUseCase(P params);

  /// Executes the use case with the given [params] and returns a [CustomResult] of type [T].
  Future<CustomResult<T>> execute({required P params}) {
    return buildUseCase(params);
  }
}

abstract class Params extends Equatable {}

class Any extends Params {
  @override
  List<Object> get props => [];
}
