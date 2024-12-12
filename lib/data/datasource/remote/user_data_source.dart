import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/user_detail_model.dart';
import 'package:get_it_study/data/model/user_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserDataSource {
  Future<Result<List<UserModel>>> getUserList() async {
    await Future.delayed(const Duration(seconds: 1));

    final List<UserModel> data = [
      UserModel(
        id: 1,
        name: 'John Doe',
        age: 25,
      ),
      UserModel(
        id: 2,
        name: 'Jane Doe',
        age: 23,
      ),
      UserModel(
        id: 3,
        name: 'John Smith',
        age: 30,
      ),
      UserModel(
        id: 4,
        name: 'John Smith',
        age: 32,
      ),
      UserModel(
        id: 5,
        name: 'John Smith',
        age: 58,
      ),
    ];
    return Result.ok(data);
  }

  Future<Result<UserDetailModel>> getUserDetail(int userId) async {
    await Future.delayed(const Duration(seconds: 1));

    final UserDetailModel data = UserDetailModel(
      id: userId,
      name: 'Song Minwoo',
      age: 29,
      address: 'Paju City',
      phone: '123-456-7890',
      company: 'Rowan',
      email: 'minwoo@rowan.kr',
      vios: 'vios://minwoo',
    );
    return Result.ok(data);
  }

  Future<Result<UserDetailModel>> getFailedUserDetailData(int userId) async {
    await Future.delayed(const Duration(seconds: 1));
    return Result.error(Exception('유저 정보를 찾는데 실패했습니다.'));
  }
}
