// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/food_items/domain/repositories/food_item_repository.dart'
    as _i185;
import '../features/food_items/domain/usecases/get_food_items_use_case.dart'
    as _i299;
import 'app_module.dart' as _i460;

const String _prod = 'prod';
const String _dev = 'dev';

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.lazySingleton<_i361.Dio>(
    () => appModule.dio,
    instanceName: 'dio_client',
  );
  gh.lazySingleton<String>(
    () => appModule.baseUrl,
    instanceName: 'base_url',
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.factory<_i299.GetFoodItemsUseCase>(
      () => _i299.GetFoodItemsUseCase(gh<_i185.FoodItemRepository>()));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
