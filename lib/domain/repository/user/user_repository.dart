import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/user/user_detail_model.dart';
import 'package:get_it_study/data/model/user/user_model.dart';

abstract class UserRepository {
  Future<Result<List<UserModel>>> getUserList();

  Future<Result<UserDetailModel>> getUserDetail(int userId);

  Future<Result<void>> saveUserIdList(List<int> id);

  Future<Result<List<int>>> getUserIdList();
}
