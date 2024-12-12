import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/datasource/remote/learning/learning_data_source.dart';
import 'package:get_it_study/data/model/learning/round_model.dart';
import 'package:get_it_study/domain/repository/learning/learning_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: LearningRepository)
class LearningRepositoryImpl extends LearningRepository {
  LearningRepositoryImpl({
    required LearningDataSource learningDataSource,
  }) : _learningDataSource = learningDataSource;

  final LearningDataSource _learningDataSource;

  @override
  Future<Result<RoundModel>> getCurrentRound() {
    return _learningDataSource.getCurrentRound();
  }
}
