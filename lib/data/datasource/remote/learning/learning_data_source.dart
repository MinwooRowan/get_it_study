import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/learning/content_unit_model.dart';
import 'package:get_it_study/data/model/learning/round_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LearningDataSource {
  Future<Result<RoundModel>> getCurrentRound() async {
    await Future.delayed(const Duration(milliseconds: 600));
    final RoundModel demoRound = RoundModel(
      id: 1921,
      roundSeq: 1,
      name: 'Demo Round',
      contentUnitList: [
        ContentUnitModel(
          id: 142,
          seq: 1,
          unitName: 'Demo Unit 1',
          contentUnitType: ContentUnitType.game,
          isCompleted: false,
        ),
        ContentUnitModel(
          id: 143,
          seq: 2,
          unitName: 'Demo Unit 2',
          contentUnitType: ContentUnitType.game,
          isCompleted: false,
        ),
        ContentUnitModel(
          id: 144,
          seq: 3,
          unitName: 'Demo Unit 3',
          contentUnitType: ContentUnitType.game,
          isCompleted: false,
        ),
        ContentUnitModel(
          id: 145,
          seq: 4,
          unitName: 'Demo Unit 4',
          contentUnitType: ContentUnitType.game,
          isCompleted: false,
        ),
        ContentUnitModel(
          id: 146,
          seq: 5,
          unitName: 'Demo Unit 5',
          contentUnitType: ContentUnitType.video,
          isCompleted: false,
        ),
        ContentUnitModel(
          id: 146,
          seq: 6,
          unitName: 'Demo Unit 6',
          contentUnitType: ContentUnitType.deem,
          isCompleted: false,
        ),
      ],
    );

    return Result.ok(demoRound);
  }
}
