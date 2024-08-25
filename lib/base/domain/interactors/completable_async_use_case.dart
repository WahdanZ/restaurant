import 'use_case.dart';

abstract class AsyncCompletableUseCase<P extends Params>
    extends UseCase<Any, P> {
  @override
  Future<Any> buildUseCase(P? params);
}
