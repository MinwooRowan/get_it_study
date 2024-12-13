import 'package:collection/collection.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/learning/content_unit_model.dart';
import 'package:get_it_study/di/configurations.dart';
import 'package:get_it_study/domain/entity/learning/content_unit_entity.dart';
import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/domain/usecase/learning/learning_use_case.dart';
import 'package:get_it_study/presentation/screen/learning/content/deem_content/deem_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/delayed_recall_content/delayed_recall_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/game_content/game_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/video_content/video_content_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'content_guide_view_controller.g.dart';

class ContentGuideViewState {
  final RoundEntity currentRound;

  ContentGuideViewState({required this.currentRound});
}

@riverpod
class ContentGuide extends _$ContentGuide {
  @override
  AsyncValue<ContentGuideViewState> build() {
    return AsyncLoading();
  }

  void updateUnitComplete(int id) {
    if (state is! AsyncData) {
      return;
    }
    final RoundEntity currentRound = state.asData!.value.currentRound;

    final RoundEntity updateRound = currentRound.copyWith(
      contentUnitList: currentRound.contentUnitList.map((unit) {
        if (unit.id == id) {
          return unit.copyWith(isCompleted: true);
        }
        return unit;
      }).toList(),
    );

    state = AsyncData(ContentGuideViewState(currentRound: updateRound));
  }

  Future<RoundEntity> getCurrentRound() async {
    if (state is AsyncData) {
      return (state as AsyncData).value.currentRound;
    }
    final LearningUseCase learningUseCase = getIt<LearningUseCase>();

    final Result<RoundEntity> result = await learningUseCase.getCurrentRound();

    if (result is Ok<RoundEntity>) {
      state = AsyncData(ContentGuideViewState(currentRound: result.value));
      return result.value;
    } else {
      throw result as Error;
    }
  }

  ContentUnitEntity? currentSeqUncompleteUnit() {
    if (state is AsyncError || state is AsyncLoading) {
      return null;
    }
    final RoundEntity currentRound = state.asData!.value.currentRound;
    return currentRound.contentUnitList
        .firstWhereOrNull((unit) => !unit.isCompleted);
  }

  String getContentRouteName({required ContentUnitType type}) {
    return switch (type) {
      ContentUnitType.game => GameContentScreen.route,
      ContentUnitType.video => VideoContentScreen.route,
      ContentUnitType.delayedRecall => DelayedRecallContentScreen.route,
      ContentUnitType.deem => DeemContentScreen.route,
    };
  }
}
