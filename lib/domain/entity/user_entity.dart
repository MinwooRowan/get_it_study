import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it_study/data/model/user_model.dart';
part 'user_entity.g.dart';
part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String name,
    required String email,
    required String password,
    required String phone,
    required String address,
    required String city,
    required String country,
    required String postalCode,
    required String role,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) => _$UserEntityFromJson(json);

  factory UserEntity.fromModel(UserModel model) {
    return UserEntity.fromJson(model.toJson());
  }
}
