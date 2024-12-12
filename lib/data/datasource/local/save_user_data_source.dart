import 'package:get_it_study/core/common/shared_pref/shared_pref.dart';
import 'package:get_it_study/core/util/logger.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocalUserDataSource {
  LocalUserDataSource();

  Future<Result<void>> saveUserIdList({required List<int> id}) async {
    try {
      final List<int> saveUserIdList = id;
      await SharedPref.setStringList(
          'user_id_list', saveUserIdList.map((e) => e.toString()).toList());

      return Result.ok(null);
    } catch (e) {
      logger.e(e);
      return Result.error(Exception(e));
    }
  }

  Future<Result<List<int>>> getUserIdList() async {
    try {
      final List<String>? userIdList = SharedPref.getStringList('user_id_list');
      return Result.ok(userIdList?.map((e) => int.parse(e)).toList() ?? []);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
