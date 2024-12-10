import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/datasource/user_datasource.dart';
import 'package:get_it_study/data/model/user_model.dart';
import 'package:get_it_study/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required UserDatasource userDatasource,
  }) : _userDatasource = userDatasource;

  final UserDatasource _userDatasource;
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
  @disposeMethod
  void dispose() {
    _cachedData.clear();
  }
}