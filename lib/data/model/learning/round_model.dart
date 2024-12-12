import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_study/data/model/learning/content_unit_model.dart';

part 'round_model.g.dart';
part 'round_model.freezed.dart';

@freezed
class RoundModel with _$RoundModel {
  factory RoundModel({
    required int id,
    required int roundSeq,
    required String name,
    required List<ContentUnitModel> contentUnitList,
  }) = _RoundModel;

  factory RoundModel.fromJson(Map<String, dynamic> json) => _$RoundModelFromJson(json);
}
