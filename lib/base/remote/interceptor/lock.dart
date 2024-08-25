import 'dart:async';

class Lock {
  Completer<void> _completer = Completer<void>();

  Lock() {
    _completer.complete();
  }

  Future<void> acquire() async {
    await _completer.future;
  }

  void release() {
    if (!_completer.isCompleted) {
      _completer.complete();
    }
  }

  void reset() {
    if (_completer.isCompleted) {
      _completer = Completer<void>();
    }
  }
}
