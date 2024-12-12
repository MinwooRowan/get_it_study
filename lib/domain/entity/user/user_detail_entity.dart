import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail_entity.g.dart';
part 'user_detail_entity.freezed.dart';

@freezed
class UserDetailEntity with _$UserDetailEntity {
  const factory UserDetailEntity({
    required int id,
    required String name,
    required int age,
    required String address,
    required String company,
    required String email,
    required String phone,
    required String vios,
  }) = _UserDetailEntity;

  factory UserDetailEntity.fromJson(Map<String, Object?> json) => _$UserDetailEntityFromJson(json);
}
