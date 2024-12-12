import 'package:get_it_study/core/util/logger.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/user_detail_model.dart';
import 'package:get_it_study/data/model/user_model.dart';
import 'package:get_it_study/domain/entity/user_detail_entity.dart';
import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:get_it_study/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(env: ['prod', 'dev', 'qa'])
class UserUseCase {
  UserUseCase(UserRepository repository) : _userRepository = repository;
  final UserRepository _userRepository;

  Future<Result<List<UserEntity>>> getUserList() async {
    final Result<List<UserModel>> result = await _userRepository.getUserList();

    if (result is Ok<List<UserModel>>) {
      final List<UserEntity> userList = result.value.map((UserModel userModel) {
        return UserEntity.fromModel(userModel);
      }).toList();

      logger.d('User list: $userList');
      return Result.ok(userList);
    } else {
      return result as Error<List<UserEntity>>;
    }
  }

  Future<Result<UserDetailEntity>> getUserDetail(int userId) async {
    final Result<UserDetailModel> result = await _userRepository.getUserDetail(userId);

    if (result is Ok<UserDetailModel>) {
      final UserDetailEntity userEntity = UserDetailEntity.fromJson(result.value.toJson());
      return Result.ok(userEntity);
    } else {
      return result as Error<UserDetailEntity>;
    }
  }
}
