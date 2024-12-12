import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/datasource/local/save_user_data_source.dart';
import 'package:get_it_study/data/datasource/remote/user/user_data_source.dart';
import 'package:get_it_study/data/model/user/user_detail_model.dart';
import 'package:get_it_study/data/model/user/user_model.dart';
import 'package:get_it_study/domain/repository/user/user_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(
  as: UserRepository,
  env: ['dev', 'qa'],
)
class UserRepositoryDevImpl implements UserRepository {
  UserRepositoryDevImpl({
    required LocalUserDataSource localUserDataSource,
    required UserDataSource userDatasource,
  })  : _userDatasource = userDatasource,
        _localUserDataSource = localUserDataSource;

  final UserDataSource _userDatasource;
  final LocalUserDataSource _localUserDataSource;
  final Map<int, UserModel> _cachedData = {};

  @override
  Future<Result<List<UserModel>>> getUserList() async {
    final result = await _userDatasource.getUserList();
    if (result is Ok<List<UserModel>>) {
      for (final user in result.value) {
        _cachedData[user.id] = user;
      }
    }

    return result;
  }

  @override
  Future<Result<UserDetailModel>> getUserDetail(int userId) async {
    final Result<UserDetailModel> result = await _userDatasource.getUserDetail(userId);
    return result;
  }

  @override
  Future<Result<List<int>>> getUserIdList() async {
    return _localUserDataSource.getUserIdList();
  }

  @override
  Future<Result<void>> saveUserIdList(List<int> id) async {
    return _localUserDataSource.saveUserIdList(id: id);
  }
}

@Singleton(
  as: UserRepository,
  env: ['prod'],
)
class UserRepositoryProdImpl implements UserRepository {
  UserRepositoryProdImpl({
    required LocalUserDataSource localUserDataSource,
    required UserDataSource userDatasource,
  })  : _userDatasource = userDatasource,
        _localUserDataSource = localUserDataSource;

  final UserDataSource _userDatasource;
  final LocalUserDataSource _localUserDataSource;
  final Map<int, UserModel> _cachedData = {};

  @override
  Future<Result<List<UserModel>>> getUserList() async {
    final result = await _userDatasource.getUserList();
    if (result is Ok<List<UserModel>>) {
      for (final user in result.value) {
        _cachedData[user.id] = user;
      }
    }

    return result;
  }

  @override
  Future<Result<UserDetailModel>> getUserDetail(int userId) async {
    final Result<UserDetailModel> result = await _userDatasource.getUserDetail(userId);
    return result;
  }

  @override
  Future<Result<List<int>>> getUserIdList() async {
    return _localUserDataSource.getUserIdList();
  }

  @override
  Future<Result<void>> saveUserIdList(List<int> id) async {
    return _localUserDataSource.saveUserIdList(id: id);
  }
}
