import 'package:get_it_study/domain/entity/user_detail_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_detail_provider.g.dart';

@riverpod
class UserDetail extends _$UserDetail {
  @override
  AsyncValue<UserDetailEntity> build() {
    return AsyncLoading();
  }

  void setUserDetail(UserDetailEntity userDetail) {
    state = AsyncData(userDetail);
  }

  void setError(Exception error) {
    state = AsyncError(error, StackTrace.current);
  }

  void clear() {
    state = AsyncLoading();
  }
}
