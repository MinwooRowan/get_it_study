import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/user_model.dart';
import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:get_it_study/domain/repository/user_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserUsecase {
  UserUsecase({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;
  final UserRepository _userRepository;

  Future<Result<List<UserEntity>>> getUserList() async {
    final Result<List<UserModel>> result = await _userRepository.getUserList();

    if (result is Ok<List<UserModel>>) {
      final List<UserEntity> userList = result.value.map((UserModel userModel) {
        return UserEntity.fromModel(userModel);
      }).toList();

      return Result.ok(userList);
    } else {
      return result as Error<List<UserEntity>>;
    }
  }
}
