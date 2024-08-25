import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'test_injection.config.dart';

final GetIt getItX = GetIt.instance;

@InjectableInit(
    generateForDir: ['test'], rootDir: 'test', preferRelativeImports: true)
void configureTestDependencies() => getItX.init();

resetGetIt() => getItX.reset();
T injectMock<T extends Object>({String? instanceName}) {
  return getItX.get<T>(instanceName: instanceName);
}
