import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/user_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserDatasource {
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
}
