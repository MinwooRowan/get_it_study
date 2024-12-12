import 'package:get_it_study/core/common/viewmodel/common_viewmodel.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/domain/entity/user/user_detail_entity.dart';
import 'package:get_it_study/domain/usecase/user/user_use_case.dart';
import 'package:get_it_study/presentation/screen/user_detail/provider/user_detail_provider.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserDetailViewModel extends CommonViewmodel {
  UserDetailViewModel(
    @factoryParam super.ref,
    @factoryParam this.userId,
    UserUseCase userUsecase,
  ) : _userUsecase = userUsecase {
    getUserDetail = Command1(_getUserDetail);
  }

  final UserUseCase _userUsecase;
  final int userId;
  late final Command1<UserDetailEntity, int> getUserDetail;

  Future<Result<UserDetailEntity>> _getUserDetail(int userId) async {
    final Result<UserDetailEntity> result = await _userUsecase.getUserDetail(userId);

    if (result is Ok<UserDetailEntity>) {
      ref.read(userDetailProvider.notifier).setUserDetail(result.value);
      return result;
    } else {
      result as Error<UserDetailEntity>;
      ref.read(userDetailProvider.notifier).setError(result.error);
      return result;
    }
  }

  @override
  void dispose() {}

  @override
  Future<void> initializer() async {}
}
