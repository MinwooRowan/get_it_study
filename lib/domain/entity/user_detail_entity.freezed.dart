// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailEntity _$UserDetailEntityFromJson(Map<String, dynamic> json) {
  return _UserDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$UserDetailEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get vios => throw _privateConstructorUsedError;

  /// Serializes this UserDetailEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailEntityCopyWith<UserDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailEntityCopyWith<$Res> {
  factory $UserDetailEntityCopyWith(
          UserDetailEntity value, $Res Function(UserDetailEntity) then) =
      _$UserDetailEntityCopyWithImpl<$Res, UserDetailEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      int age,
      String address,
      String company,
      String email,
      String phone,
      String vios});
}

/// @nodoc
class _$UserDetailEntityCopyWithImpl<$Res, $Val extends UserDetailEntity>
    implements $UserDetailEntityCopyWith<$Res> {
  _$UserDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? address = null,
    Object? company = null,
    Object? email = null,
    Object? phone = null,
    Object? vios = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      vios: null == vios
          ? _value.vios
          : vios // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailEntityImplCopyWith<$Res>
    implements $UserDetailEntityCopyWith<$Res> {
  factory _$$UserDetailEntityImplCopyWith(_$UserDetailEntityImpl value,
          $Res Function(_$UserDetailEntityImpl) then) =
      __$$UserDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int age,
      String address,
      String company,
      String email,
      String phone,
      String vios});
}

/// @nodoc
class __$$UserDetailEntityImplCopyWithImpl<$Res>
    extends _$UserDetailEntityCopyWithImpl<$Res, _$UserDetailEntityImpl>
    implements _$$UserDetailEntityImplCopyWith<$Res> {
  __$$UserDetailEntityImplCopyWithImpl(_$UserDetailEntityImpl _value,
      $Res Function(_$UserDetailEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? address = null,
    Object? company = null,
    Object? email = null,
    Object? phone = null,
    Object? vios = null,
  }) {
    return _then(_$UserDetailEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      vios: null == vios
          ? _value.vios
          : vios // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailEntityImpl implements _UserDetailEntity {
  const _$UserDetailEntityImpl(
      {required this.id,
      required this.name,
      required this.age,
      required this.address,
      required this.company,
      required this.email,
      required this.phone,
      required this.vios});

  factory _$UserDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int age;
  @override
  final String address;
  @override
  final String company;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String vios;

  @override
  String toString() {
    return 'UserDetailEntity(id: $id, name: $name, age: $age, address: $address, company: $company, email: $email, phone: $phone, vios: $vios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.vios, vios) || other.vios == vios));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, age, address, company, email, phone, vios);

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      __$$UserDetailEntityImplCopyWithImpl<_$UserDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _UserDetailEntity implements UserDetailEntity {
  const factory _UserDetailEntity(
      {required final int id,
      required final String name,
      required final int age,
      required final String address,
      required final String company,
      required final String email,
      required final String phone,
      required final String vios}) = _$UserDetailEntityImpl;

  factory _UserDetailEntity.fromJson(Map<String, dynamic> json) =
      _$UserDetailEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get age;
  @override
  String get address;
  @override
  String get company;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get vios;

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
