import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_study/domain/entity/learning/content_unit_entity.dart';

part 'round_entity.g.dart';
part 'round_entity.freezed.dart';

@Freezed(toJson: true)
class RoundEntity with _$RoundEntity {
  const factory RoundEntity({
    required int id,
    required int roundSeq,
    required String name,
    required List<ContentUnitEntity> contentUnitList,
  }) = _RoundEntity;

  factory RoundEntity.fromJson(Map<String, dynamic> json) => _$RoundEntityFromJson(json);
}
