import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_list_provider.g.dart';

@Riverpod(keepAlive: true)
class UserList extends _$UserList {
  @override
  List<UserEntity> build() {
    return [];
  }

  void setUserList(List<UserEntity> userList) {
    state = userList;
  }

  void addUser(UserEntity user) {
    state = [...state, user];
  }

  void removeUser(UserEntity user) {
    state = state.where((UserEntity element) => element.id != user.id).toList();
  }

  void updateUser(UserEntity user) {
    state = state.map((UserEntity element) {
      if (element.id == user.id) {
        return user;
      }
      return element;
    }).toList();
  }

  void clear() {
    state = [];
  }
}
