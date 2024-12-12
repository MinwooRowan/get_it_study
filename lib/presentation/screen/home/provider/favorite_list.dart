import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_list.g.dart';

@riverpod
class FavoriteList extends _$FavoriteList {
  @override
  AsyncValue<List<int>> build() {
    return AsyncLoading();
  }

  void addFavorite(int userId) {
    if (state is AsyncError) {
      return;
    }

    if (state is AsyncLoading) {
      state = AsyncData([userId]);
      return;
    }

    final List<int> data = state.value ?? [];

    state = AsyncData([...data, userId]);
  }

  void removeFavorite(int userId) {
    if (state is AsyncError) {
      return;
    }

    if (state is AsyncLoading) {
      return;
    }

    final List<int> data = state.value ?? [];

    state = AsyncData(data.where((int id) => id != userId).toList());
  }

  void clearFavorite() {
    if (state is AsyncError) {
      return;
    }

    if (state is AsyncLoading) {
      return;
    }

    state = AsyncData([]);
  }
}
