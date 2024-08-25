import 'package:dio/dio.dart';

import 'lock.dart';

class QueuedInterceptor extends Interceptor {
  final _lock = Lock();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    await _lock.acquire();
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  void unlock() {
    _lock.release();
  }

  void resetLock() {
    _lock.reset();
  }
}
