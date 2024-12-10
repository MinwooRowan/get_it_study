// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_it_study/data/datasource/user_datasource.dart' as _i378;
import 'package:get_it_study/data/repository/user_repository_impl.dart' as _i97;
import 'package:get_it_study/domain/repository/user_repository.dart' as _i707;
import 'package:get_it_study/domain/usecase/user_usecase.dart' as _i291;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.lazySingleton<_i707.UserRepository>(
      () => _i97.UserRepositoryImpl(userDatasource: gh<_i378.UserDatasource>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i291.UserUsecase>(
        () => _i291.UserUsecase(userRepository: gh<_i707.UserRepository>()));
    return this;
  }
}
