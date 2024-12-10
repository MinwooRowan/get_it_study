import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/user_model.dart';

abstract class UserRepository {
  Future<Result<List<UserModel>>> getUserList();

  void dispose();
}
