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

import '../base/index.dart' as _i852;
import '../base/remote/network_task_manager.dart' as _i148;
import '../features/food_items/data/data_source/food_item_remote_data_source.dart'
    as _i587;
import '../features/food_items/data/mapper/food_item_mapper.dart' as _i237;
import '../features/food_items/data/repositories/food_item_repository_impl.dart'
    as _i661;
import '../features/food_items/domain/repositories/food_item_repository.dart'
    as _i185;
import '../features/food_items/domain/usecases/get_food_items_use_case.dart'
    as _i299;
import '../features/food_items/presentation/bloc/food_items_bloc.dart' as _i798;
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
  gh.factory<_i237.FoodItemMapper>(() => _i237.FoodItemMapper());
  gh.lazySingleton<_i148.NetworkTaskManager>(() => _i148.NetworkTaskManager());
  gh.lazySingleton<_i361.Dio>(
    () => appModule.dio,
    instanceName: 'dio_client',
  );
  gh.lazySingleton<_i587.FoodItemRemoteDataSource>(() =>
      _i587.FoodItemFireStoreRemoteDataSourceImpl(
          networkTask: gh<_i852.NetworkTaskManager>()));
  gh.lazySingleton<String>(
    () => appModule.baseUrl,
    instanceName: 'base_url',
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.lazySingleton<_i185.FoodItemRepository>(() => _i661.FoodItemRepositoryImpl(
        remoteDataSource: gh<_i587.FoodItemRemoteDataSource>(),
        foodItemMapper: gh<_i237.FoodItemMapper>(),
      ));
  gh.factory<_i299.GetFoodItemsUseCase>(
      () => _i299.GetFoodItemsUseCase(gh<_i185.FoodItemRepository>()));
  gh.factory<_i798.FoodItemsBloc>(() => _i798.FoodItemsBloc(
      getFoodItemsUseCase: gh<_i299.GetFoodItemsUseCase>()));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
