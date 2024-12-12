import 'package:get_it_study/core/common/viewmodel/common_viewmodel.dart';
import 'package:get_it_study/core/provider/user_list_provider.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/logger.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/domain/entity/user/user_entity.dart';
import 'package:get_it_study/domain/usecase/user/user_use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends CommonViewmodel {
  HomeViewModel(
    @factoryParam super.ref,
    UserUseCase userUsecase,
  ) : _userUsecase = userUsecase {
    getUserList = Command0(_getUserList);
    addFavorite = Command1(_addFavorite);
    getFavoriteList = Command0(_getFavoriteList);
  }

  final UserUseCase _userUsecase;
  late final Command0<List<UserEntity>> getUserList;
  late final Command1<void, int> addFavorite;
  late final Command0<List<int>> getFavoriteList;

  Future<Result<List<UserEntity>>> _getUserList() async {
    final Result<List<UserEntity>> result = await _userUsecase.getUserList();

    if (result is Ok<List<UserEntity>>) {
      ref.read(userListProvider.notifier).setUserList(result.value);
      return result;
    } else {
      return result;
    }
  }

  Future<Result<void>> _addFavorite(int userId) async {
    final Result<void> result = await _userUsecase.addFavorite(userId);

    logger.d('Add Favorite: $result');

    if (result is Ok<void>) {
      return result;
    } else {
      return result;
    }
  }

  Future<Result<List<int>>> _getFavoriteList() async {
    final Result<List<int>> result = await _userUsecase.getFavoriteList();

    if (result is Ok<List<int>>) {
      final List<int> favoriteList = result.value;
      logger.d(favoriteList);
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
