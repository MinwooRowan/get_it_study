import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail_model.g.dart';
part 'user_detail_model.freezed.dart';

@freezed
class UserDetailModel with _$UserDetailModel {
  const factory UserDetailModel({
    required int id,
    required String name,
    required int age,
    required String address,
    required String company,
    required String email,
    required String phone,
    required String vios,
  }) = _UserDetailModel;

  factory UserDetailModel.fromJson(Map<String, Object?> json) => _$UserDetailModelFromJson(json);
}
