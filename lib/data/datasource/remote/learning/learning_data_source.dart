import 'package:get_it_study/core/util/result.dart';
import 'package:get_it_study/data/model/learning/content_unit_model.dart';
import 'package:get_it_study/data/model/learning/round_model.dart';
import 'package:injectable/injectable.dart';

RoundModel _demoRound = RoundModel(
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
      id: 147,
      seq: 6,
      unitName: 'Demo Unit 6',
      contentUnitType: ContentUnitType.deem,
      isCompleted: false,
    ),
  ],
);

@lazySingleton
class LearningDataSource {
  Future<Result<RoundModel>> getCurrentRound() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Result.ok(_demoRound);
  }

  Future<Result<void>> postContentComplete({required int id}) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final ContentUnitModel contentUnit =
        _demoRound.contentUnitList.firstWhere((unit) => unit.id == id);

    final ContentUnitModel changedUnit =
        contentUnit.copyWith(isCompleted: true);

    _demoRound = _demoRound.copyWith(
      contentUnitList: _demoRound.contentUnitList
          .map((unit) => unit.id == id ? changedUnit : unit)
          .toList(),
    );

    return Result.ok(null);
  }
}
