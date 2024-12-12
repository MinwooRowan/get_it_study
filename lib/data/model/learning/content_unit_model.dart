import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_unit_model.g.dart';
part 'content_unit_model.freezed.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum ContentUnitType {
  game,
  video,
  delayedRecall,
  deem,
}

@freezed
class ContentUnitModel with _$ContentUnitModel {
  const factory ContentUnitModel({
    required int id,
    required int seq,
    required String unitName,
    required ContentUnitType contentUnitType,
    required bool isCompleted,
    @Default(0) int reviewCount,
  }) = _ContentUnitModel;

  factory ContentUnitModel.fromJson(Map<String, dynamic> json) => _$ContentUnitModelFromJson(json);
}
