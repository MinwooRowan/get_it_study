import 'package:get_it_study/core/common/viewmodel/common_viewmodel.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/domain/entity/learning/content_unit_entity.dart';
import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/domain/usecase/learning/learning_use_case.dart';
import 'package:get_it_study/presentation/screen/learning/provider/current_round_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContentGuideViewModel extends CommonViewmodel {
  ContentGuideViewModel(
    @factoryParam super.ref,
    LearningUseCase learningUseCase,
  ) : _learningUseCase = learningUseCase {
    getCurrentRound = Command0(_getCurrentRound);
    initializer();
  }

  final LearningUseCase _learningUseCase;
  late final Command0 getCurrentRound;

  Future<Result<RoundEntity>> _getCurrentRound() async {
    final Result<RoundEntity> result = await _learningUseCase.getCurrentRound();

    if (result is Ok<RoundEntity>) {
      ref.read(currentRoundProvider.notifier).setCurrentRound(result.value);
      return Result.ok(result.value);
    } else {
      return result;
    }
  }

  ContentUnitEntity? get currentSeqUnit {
    if (ref.read(currentRoundProvider) is AsyncError ||
        ref.read(currentRoundProvider) is AsyncLoading) {
      return null;
    }
    final RoundEntity currentRound = ref.read(currentRoundProvider).asData!.value;
    return currentRound.contentUnitList.firstWhere((unit) => !unit.isCompleted);
  }

  @override
  void dispose() {}

  @override
  Future<void> initializer() async {
    getCurrentRound.execute();
  }
}
