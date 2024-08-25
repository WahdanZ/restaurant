import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../base/logger/logger.dart';
import 'injector.config.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies({String? environment}) async {
  $initGetIt(getIt, environmentFilter: NoEnvOrContains(environment));
  if (environment == Environment.test) {
    logger.d("testing env");
    final dio = inject<Dio>(instanceName: "dio_client");
    final queuedInterceptor = QueuedInterceptor();
    dio.interceptors.add(queuedInterceptor);
    getIt.allowReassignment = true;
  }
}

T inject<T extends Object>({String? instanceName}) {
  return getIt.get<T>(instanceName: instanceName);
}
