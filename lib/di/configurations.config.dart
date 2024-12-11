// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_it_study/data/datasource/user_datasource.dart' as _i378;
import 'package:get_it_study/data/repository/async_user_repository.dart'
    as _i578;
import 'package:get_it_study/data/repository/user_repository_impl.dart' as _i97;
import 'package:get_it_study/domain/repository/user_repository.dart' as _i707;
import 'package:get_it_study/domain/usecase/user_usecase.dart' as _i291;
import 'package:get_it_study/presentation/screen/home/viewmodel/home_viewmodel.dart'
    as _i205;
import 'package:injectable/injectable.dart' as _i526;

const String _prod = 'prod';
const String _dev = 'dev';
const String _qa = 'qa';

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
    gh.factoryAsync<_i578.AsyncUserRepository>(
        () => _i578.AsyncUserRepository.create());
    gh.lazySingleton<_i378.UserDatasource>(() => _i378.UserDatasource());
    gh.factory<_i707.UserRepository>(
      () =>
          _i97.UserRepositoryImpl2(userDatasource: gh<_i378.UserDatasource>()),
      registerFor: {_prod},
    );
    gh.factory<_i707.UserRepository>(
      () => _i97.UserRepositoryImpl(userDatasource: gh<_i378.UserDatasource>()),
      registerFor: {
        _dev,
        _qa,
      },
    );
    gh.lazySingleton<_i291.UserUsecase>(
      () => _i291.UserUsecase(gh<_i707.UserRepository>()),
      registerFor: {
        _prod,
        _dev,
        _qa,
      },
    );
    gh.factoryParam<_i205.HomeViewmodel, int, dynamic>(
      (
        id,
        _,
      ) =>
          _i205.HomeViewmodel(
        userUsecase: gh<_i291.UserUsecase>(),
        id: id,
      ),
      registerFor: {
        _prod,
        _dev,
        _qa,
      },
    );
    return this;
  }
}
