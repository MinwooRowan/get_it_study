import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_study/data/model/learning/content_unit_model.dart';
part 'content_unit_entity.g.dart';
part 'content_unit_entity.freezed.dart';

@freezed
class ContentUnitEntity with _$ContentUnitEntity {
  const factory ContentUnitEntity({
    required int id,
    required int seq,
    required String unitName,
    required ContentUnitType contentUnitType,
    required bool isCompleted,
    @Default(0) int reviewCount,
  }) = _ContentUnitEntity;

  factory ContentUnitEntity.fromJson(Map<String, dynamic> json) =>
      _$ContentUnitEntityFromJson(json);
}
