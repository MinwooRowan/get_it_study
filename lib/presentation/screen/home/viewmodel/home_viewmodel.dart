import 'package:flutter/material.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/logger.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:get_it_study/domain/usecase/user_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewmodel extends ChangeNotifier {
  HomeViewmodel({
    required UserUsecase userUsecase,
    @factoryParam required this.id,
  }) : _userUsecase = userUsecase {
    getUserList = Command0(_getUserList);
  }
  final UserUsecase _userUsecase;
  final int id;

  late final Command0<List<UserEntity>> getUserList;
  final List<String> _userList = [];

  List<String> get userList => _userList;

  Future<Result<List<UserEntity>>> _getUserList() async {
    final Result<List<UserEntity>> result = await _userUsecase.getUserList();

    switch (result) {
      case Ok():
        {
          _userList.clear();
          _userList.addAll(result.value.map((UserEntity userEntity) {
            return userEntity.name;
          }).toList());
          notifyListeners();
        }

      case Error():
        {
          logger.e(result.error);
        }
    }
    notifyListeners();
    return result;
  }
}
