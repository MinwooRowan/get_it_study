// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:get_it_study/data/datasource/local/save_user_data_source.dart'
    as _i940;
import 'package:get_it_study/data/datasource/remote/learning/learning_data_source.dart'
    as _i234;
import 'package:get_it_study/data/datasource/remote/user/user_data_source.dart'
    as _i234;
import 'package:get_it_study/data/repository/learning/learning_repository_impl.dart'
    as _i798;
import 'package:get_it_study/data/repository/user/user_repository_impl.dart'
    as _i307;
import 'package:get_it_study/domain/repository/learning/learning_repository.dart'
    as _i423;
import 'package:get_it_study/domain/repository/user/user_repository.dart'
    as _i218;
import 'package:get_it_study/domain/usecase/learning/learning_use_case.dart'
    as _i888;
import 'package:get_it_study/domain/usecase/user/user_use_case.dart' as _i82;
import 'package:get_it_study/presentation/screen/home/view_model/home_view_model.dart'
    as _i127;
import 'package:get_it_study/presentation/screen/learning/content/deem_content/view_model/deem_content_view_model.dart'
    as _i188;
import 'package:get_it_study/presentation/screen/learning/content/game_content/view_model/game_content_view_model.dart'
    as _i55;
import 'package:get_it_study/presentation/screen/learning/content/video_content/view_model/video_content_view_model.dart'
    as _i306;
import 'package:get_it_study/presentation/screen/learning/view_model/content_guide_view_model.dart'
    as _i697;
import 'package:get_it_study/presentation/screen/user_detail/view_model/user_detail_view_model.dart'
    as _i802;
import 'package:hooks_riverpod/hooks_riverpod.dart' as _i275;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _qa = 'qa';
const String _prod = 'prod';

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
    gh.singleton<_i940.LocalUserDataSource>(() => _i940.LocalUserDataSource());
    gh.singleton<_i234.UserDataSource>(() => _i234.UserDataSource());
    gh.lazySingleton<_i234.LearningDataSource>(
        () => _i234.LearningDataSource());
    gh.singleton<_i218.UserRepository>(
      () => _i307.UserRepositoryDevImpl(
        localUserDataSource: gh<_i940.LocalUserDataSource>(),
        userDatasource: gh<_i234.UserDataSource>(),
      ),
      registerFor: {
        _dev,
        _qa,
      },
    );
    gh.singleton<_i423.LearningRepository>(() => _i798.LearningRepositoryImpl(
        learningDataSource: gh<_i234.LearningDataSource>()));
    gh.singleton<_i82.UserUseCase>(
      () => _i82.UserUseCase(gh<_i218.UserRepository>()),
      registerFor: {
        _prod,
        _dev,
        _qa,
      },
    );
    gh.lazySingleton<_i888.LearningUseCase>(() => _i888.LearningUseCase(
        learningRepository: gh<_i423.LearningRepository>()));
    gh.singleton<_i218.UserRepository>(
      () => _i307.UserRepositoryProdImpl(
        localUserDataSource: gh<_i940.LocalUserDataSource>(),
        userDatasource: gh<_i234.UserDataSource>(),
      ),
      registerFor: {_prod},
    );
    gh.factoryParam<_i55.GameContentViewModel, _i275.Ref<Object?>, dynamic>((
      ref,
      _,
    ) =>
        _i55.GameContentViewModel(
          ref,
          gh<_i888.LearningUseCase>(),
        ));
    gh.factoryParam<_i697.ContentGuideViewModel, _i275.Ref<Object?>, dynamic>((
      ref,
      _,
    ) =>
        _i697.ContentGuideViewModel(
          ref,
          gh<_i888.LearningUseCase>(),
        ));
    gh.factoryParam<_i306.VideoContentViewModel, _i275.Ref<Object?>, dynamic>((
      ref,
      _,
    ) =>
        _i306.VideoContentViewModel(
          ref,
          gh<_i888.LearningUseCase>(),
        ));
    gh.factoryParam<_i188.DeemContentViewModel, _i275.Ref<Object?>, dynamic>((
      ref,
      _,
    ) =>
        _i188.DeemContentViewModel(
          ref,
          gh<_i888.LearningUseCase>(),
        ));
    gh.factoryParam<_i802.UserDetailViewModel, _i275.Ref<Object?>, int>((
      ref,
      userId,
    ) =>
        _i802.UserDetailViewModel(
          ref,
          userId,
          gh<_i82.UserUseCase>(),
        ));
    gh.factoryParam<_i127.HomeViewModel, _i275.Ref<Object?>, dynamic>((
      ref,
      _,
    ) =>
        _i127.HomeViewModel(
          ref,
          gh<_i82.UserUseCase>(),
        ));
    return this;
  }
}
