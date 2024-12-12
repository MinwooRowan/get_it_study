import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it_study/core/util/command.dart';
import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/domain/usecase/learning/learning_use_case.dart';
import 'package:get_it_study/presentation/screen/learning/content/base/content_base_view_model.dart';
import 'package:get_it_study/presentation/screen/learning/provider/current_round_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';

@injectable
class VideoContentViewModel extends ContentBaseViewModel {
  VideoContentViewModel(
    @factoryParam super.ref,
    LearningUseCase learningUseCase,
  ) : _learningUseCase = learningUseCase {
    postContentCompleteCommand = AsyncCommand1(postContentComplete);
  }

  final LearningUseCase _learningUseCase;

  late final AsyncCommand1<void, int> postContentCompleteCommand;

  @protected
  @override
  Future<Result<void>> postContentComplete(int id) async {
    if (ref.read(currentRoundProvider) is AsyncError ||
        ref.read(currentRoundProvider) is AsyncLoading) {
      throw StateError('현재 과제 정보가 존재하지 않습니다.');
    }
    ref.read(currentRoundProvider.notifier).updateUnitComplete(id);
    return await _learningUseCase.postContentComplete(id: id);
  }

  @override
  bool checkAllContentCompleted() {
    if (ref.read(currentRoundProvider) is AsyncError ||
        ref.read(currentRoundProvider) is AsyncLoading) {
      throw StateError('현재 과제 정보가 존재하지 않습니다.');
    }

    final RoundEntity currentRound =
        ref.read(currentRoundProvider).asData!.value;

    return currentRound.contentUnitList.every((unit) => unit.isCompleted);
  }

  @override
  void dispose() {}

  @override
  Future<void> initializer() async {}
}
