import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_round_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentRound extends _$CurrentRound {
  @override
  AsyncValue<RoundEntity> build() {
    return AsyncLoading();
  }

  void setCurrentRound(RoundEntity currentRound) {
    state = AsyncData(currentRound);
  }

  void resetCurrentRound() {
    state = AsyncLoading();
  }

  void dispose() {
    state = AsyncLoading();
  }

  void updateUnitComplete(int id) {
    final RoundEntity currentRound = state.asData!.value;

    final RoundEntity updateRound = currentRound.copyWith(
      contentUnitList: currentRound.contentUnitList.map((unit) {
        if (unit.id == id) {
          return unit.copyWith(isCompleted: true);
        }
        return unit;
      }).toList(),
    );

    state = AsyncData(updateRound);
  }
}
