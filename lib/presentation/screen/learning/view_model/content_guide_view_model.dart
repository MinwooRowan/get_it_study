import 'package:collection/collection.dart';
import 'package:get_it_study/core/common/viewmodel/common_viewmodel.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/learning/content_unit_model.dart';
import 'package:get_it_study/domain/entity/learning/content_unit_entity.dart';
import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/domain/usecase/learning/learning_use_case.dart';
import 'package:get_it_study/presentation/screen/learning/content/deem_content/deem_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/delayed_recall_content/delayed_recall_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/game_content/game_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/video_content/video_content_screen.dart';
import 'package:get_it_study/presentation/screen/learning/provider/current_round_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContentGuideViewModel extends CommonViewModel {
  ContentGuideViewModel(
    @factoryParam super.ref,
    LearningUseCase learningUseCase,
  ) : _learningUseCase = learningUseCase {
    getCurrentRound = AsyncCommand0(_getCurrentRound);
    initializer();
  }

  final LearningUseCase _learningUseCase;
  late final AsyncCommand0 getCurrentRound;

  Future<Result<RoundEntity>> _getCurrentRound() async {
    if (ref.read(currentRoundProvider) is AsyncData) {
      return Result.ok(ref.read(currentRoundProvider).asData!.value);
    }

    final Result<RoundEntity> result = await _learningUseCase.getCurrentRound();

    if (result is Ok<RoundEntity>) {
      ref.read(currentRoundProvider.notifier).setCurrentRound(result.value);
      return Result.ok(result.value);
    } else {
      return result;
    }
  }

  ContentUnitEntity? get currentSeqUncompleteUnit {
    if (ref.read(currentRoundProvider) is AsyncError ||
        ref.read(currentRoundProvider) is AsyncLoading) {
      return null;
    }
    final RoundEntity currentRound =
        ref.read(currentRoundProvider).asData!.value;
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

  @override
  void dispose() {}

  @override
  Future<void> initializer() async {
    getCurrentRound.execute();
  }
}
