import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_list_provider.g.dart';

@Riverpod(keepAlive: true)
class UserList extends _$UserList {
  @override
  AsyncValue<List<UserEntity>> build() {
    return AsyncLoading();
  }

  void setUserList(List<UserEntity> userList) {
    state = AsyncData(userList);
  }

  void addUser(UserEntity user) {
    if (state is AsyncError) {
      return;
    }

    if (state is AsyncLoading) {
      state = AsyncData([user]);
      return;
    }

    final List<UserEntity> data = state.value ?? [];

    state = AsyncData([...data, user]);
  }

  void removeUser(UserEntity user) {
    if (state is AsyncError) {
      return;
    }

    if (state is AsyncLoading) {
      return;
    }

    final List<UserEntity> data = state.value ?? [];

    state = AsyncData(data.where((UserEntity element) => element.id != user.id).toList());
  }

  void updateUser(UserEntity user) {
    if (state is AsyncError) {
      return;
    }

    if (state is AsyncLoading) {
      return;
    }

    final List<UserEntity> data = state.value ?? [];

    state = AsyncData(data.map((UserEntity element) {
      if (element.id == user.id) {
        return user;
      }
      return element;
    }).toList());
  }

  void clear() {
    state = AsyncLoading();
  }
}
