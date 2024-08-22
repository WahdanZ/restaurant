import 'dart:async';

import '../index.dart';

/// Singleton class to manage the execution of network tasks.
/// Provides mechanisms to lock and unlock task execution,
/// allowing for the pausing and resuming of network requests.
class NetworkTaskManager {
  NetworkTaskManager._privateConstructor();

  static final NetworkTaskManager _instance =
      NetworkTaskManager._privateConstructor();

  factory NetworkTaskManager() {
    return _instance;
  }

  bool _isLocked = false;

  final List<Completer<void>> _waitingTasks = [];

  void lock() async {
    _isLocked = true;
  }

  void unlock() {
    _isLocked = false;
    for (var completer in _waitingTasks) {
      if (!completer.isCompleted) {
        completer.complete();
      }
    }
    _waitingTasks.clear();
  }

  /// Executes a network task with optional error mappings and isolate usage.
  ///
  /// [task] - The network task to be executed.
  /// [networkErrorMapping] - Optional custom mapping for network errors.
  /// [errorMapping] - Optional custom mapping for general errors.
  /// [useIsolate] - Whether to execute the task in an isolate.
  ///
  /// Returns a [CustomResult] containing the task result or error.
  Future<CustomResult<T>> executeTask<T extends Object>(
    NetworkTask<T> task, {
    NetworkErrorMapping<T>? networkErrorMapping,
    ErrorMapping? errorMapping,
    bool useIsolate = false,
  }) async {
    final completer = Completer<CustomResult<T>>();

    if (_isLocked) {
      final taskCompleter = Completer<void>();
      _waitingTasks.add(taskCompleter);
      await taskCompleter.future;
    }

    try {
      final result = await task.execute(
        networkErrorMapping: networkErrorMapping,
        errorMapping: errorMapping,
        useIsolate: useIsolate,
      );
      completer.complete(result);
      return result;
    } catch (error, stackTrace) {
      final result = task.onError(error, stackTrace);
      completer.complete(result);
      return result;
    }
  }
}
