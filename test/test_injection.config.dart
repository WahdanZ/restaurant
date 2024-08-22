// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'mock.dart' as _i173;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i173.MockFoodItemRepository>(
        () => _i173.MockFoodItemRepository());
    gh.factory<_i173.MockFoodItemCollection>(
        () => _i173.MockFoodItemCollection());
    gh.factory<_i173.MockFoodItemQuerySnapshot>(
        () => _i173.MockFoodItemQuerySnapshot());
    gh.factory<_i173.MockFoodItemQueryDocumentSnapshot>(
        () => _i173.MockFoodItemQueryDocumentSnapshot());
    gh.factory<_i173.MockFoodItemRemoteDataSource>(
        () => _i173.MockFoodItemRemoteDataSource());
    return this;
  }
}
