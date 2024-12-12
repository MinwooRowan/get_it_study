import 'package:get_it_study/core/common/viewmodel/common_viewmodel.dart';
import 'package:get_it_study/core/provider/user_list_provider.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:get_it_study/domain/usecase/user_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends CommonViewmodel {
  HomeViewModel(
    @factoryParam super.ref,
    UserUsecase userUsecase,
  ) : _userUsecase = userUsecase {
    getUserList = Command0(_getUserList);
  }

  final UserUsecase _userUsecase;
  late final Command0<List<UserEntity>> getUserList;

  Future<Result<List<UserEntity>>> _getUserList() async {
    final Result<List<UserEntity>> result = await _userUsecase.getUserList();

    if (result is Ok<List<UserEntity>>) {
      ref.read(userListProvider.notifier).setUserList(result.value);
      return result;
    } else {
      return result;
    }
  }

  @override
  void dispose() {}

  @override
  Future<void> initializer() {
    return getUserList.execute();
  }
}
