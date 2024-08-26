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
import '../features/auth/data/repositories/firebase_user_repository.dart'
    as _i278;
import '../features/auth/domain/repositories/user_repository.dart' as _i955;
import '../features/food_items/data/mapper/food_item_mapper.dart' as _i237;
import '../features/food_items/data/remote/data_source/food_item_remote_data_source.dart'
    as _i902;
import '../features/food_items/data/repositories/food_item_repository_impl.dart'
    as _i661;
import '../features/food_items/domain/repositories/food_item_repository.dart'
    as _i185;
import '../features/food_items/domain/usecases/get_food_item_details.dart'
    as _i614;
import '../features/food_items/domain/usecases/get_food_items_use_case.dart'
    as _i299;
import '../features/food_items/presentation/bloc/food_item_details/food_items_details_bloc.dart'
    as _i164;
import '../features/food_items/presentation/bloc/food_items/food_items_bloc.dart'
    as _i618;
import '../features/table_reservation/data/remote/data_sources/table_remote_data_source.dart'
    as _i579;
import '../features/table_reservation/data/repository/table_repository_impl.dart'
    as _i197;
import '../features/table_reservation/domain/repository/table_repository.dart'
    as _i228;
import '../features/table_reservation/domain/usecases/cancel_reserve_table_use_case.dart'
    as _i299;
import '../features/table_reservation/domain/usecases/get_tables_for_date_use_case.dart'
    as _i378;
import '../features/table_reservation/domain/usecases/reserve_table_use_case.dart'
    as _i696;
import '../features/table_reservation/presentation/bloc/table_bloc.dart'
    as _i803;
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
  gh.lazySingleton<_i902.FoodItemRemoteDataSource>(() =>
      _i902.FoodItemFireStoreRemoteDataSourceImpl(
          networkTask: gh<_i852.NetworkTaskManager>()));
  gh.lazySingleton<_i579.TableRemoteDataSource>(() =>
      _i579.TableFireStoreRemoteDataSourceImpl(
          networkTask: gh<_i852.NetworkTaskManager>()));
  gh.lazySingleton<_i185.FoodItemRepository>(() => _i661.FoodItemRepositoryImpl(
        remoteDataSource: gh<_i902.FoodItemRemoteDataSource>(),
        foodItemMapper: gh<_i237.FoodItemMapper>(),
      ));
  gh.lazySingleton<_i955.UserRepository>(() => _i278.FirebaseUserRepository());
  gh.lazySingleton<String>(
    () => appModule.baseUrl,
    instanceName: 'base_url',
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.lazySingleton<_i228.TableRepository>(() => _i197.TableRepositoryImpl(
        gh<_i579.TableRemoteDataSource>(),
        gh<_i955.UserRepository>(),
      ));
  gh.factory<_i299.GetFoodItemsUseCase>(
      () => _i299.GetFoodItemsUseCase(gh<_i185.FoodItemRepository>()));
  gh.factory<_i614.GetFoodItemDetailsUseCase>(
      () => _i614.GetFoodItemDetailsUseCase(gh<_i185.FoodItemRepository>()));
  gh.factory<_i164.FoodItemsDetailsBloc>(
      () => _i164.FoodItemsDetailsBloc(gh<_i614.GetFoodItemDetailsUseCase>()));
  gh.factory<_i618.FoodItemsBloc>(() => _i618.FoodItemsBloc(
      getFoodItemsUseCase: gh<_i299.GetFoodItemsUseCase>()));
  gh.factory<_i378.GetTablesForDateUseCase>(
      () => _i378.GetTablesForDateUseCase(gh<_i228.TableRepository>()));
  gh.factory<_i696.ReserveTableUseCase>(
      () => _i696.ReserveTableUseCase(gh<_i228.TableRepository>()));
  gh.factory<_i299.CancelReserveTableUseCase>(
      () => _i299.CancelReserveTableUseCase(gh<_i228.TableRepository>()));
  gh.factory<_i803.TableBloc>(() => _i803.TableBloc(
        gh<_i378.GetTablesForDateUseCase>(),
        gh<_i696.ReserveTableUseCase>(),
        gh<_i299.CancelReserveTableUseCase>(),
      ));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
