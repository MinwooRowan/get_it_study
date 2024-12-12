import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/learning/round_model.dart';

abstract class LearningRepository {
  Future<Result<RoundModel>> getCurrentRound();

  Future<Result<void>> postContentComplete({required int id});
}
