import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/learning/round_model.dart';
import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/domain/repository/learning/learning_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LearningUseCase {
  LearningUseCase({
    required LearningRepository learningRepository,
  }) : _learningRepository = learningRepository;

  final LearningRepository _learningRepository;

  Future<Result<RoundEntity>> getCurrentRound() async {
    final Result<RoundModel> result = await _learningRepository.getCurrentRound();

    if (result is Ok<RoundModel>) {
      final RoundEntity roundEntity = RoundEntity.fromJson(result.value.toJson());
      return Result.ok(roundEntity);
    } else {
      return result as Error<RoundEntity>;
    }
  }
}
