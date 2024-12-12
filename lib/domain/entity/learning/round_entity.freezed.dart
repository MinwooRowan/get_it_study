// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'round_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoundEntity _$RoundEntityFromJson(Map<String, dynamic> json) {
  return _RoundEntity.fromJson(json);
}

/// @nodoc
mixin _$RoundEntity {
  int get id => throw _privateConstructorUsedError;
  int get roundSeq => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ContentUnitEntity> get contentUnitList =>
      throw _privateConstructorUsedError;

  /// Serializes this RoundEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoundEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoundEntityCopyWith<RoundEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoundEntityCopyWith<$Res> {
  factory $RoundEntityCopyWith(
          RoundEntity value, $Res Function(RoundEntity) then) =
      _$RoundEntityCopyWithImpl<$Res, RoundEntity>;
  @useResult
  $Res call(
      {int id,
      int roundSeq,
      String name,
      List<ContentUnitEntity> contentUnitList});
}

/// @nodoc
class _$RoundEntityCopyWithImpl<$Res, $Val extends RoundEntity>
    implements $RoundEntityCopyWith<$Res> {
  _$RoundEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoundEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roundSeq = null,
    Object? name = null,
    Object? contentUnitList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      roundSeq: null == roundSeq
          ? _value.roundSeq
          : roundSeq // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contentUnitList: null == contentUnitList
          ? _value.contentUnitList
          : contentUnitList // ignore: cast_nullable_to_non_nullable
              as List<ContentUnitEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoundEntityImplCopyWith<$Res>
    implements $RoundEntityCopyWith<$Res> {
  factory _$$RoundEntityImplCopyWith(
          _$RoundEntityImpl value, $Res Function(_$RoundEntityImpl) then) =
      __$$RoundEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int roundSeq,
      String name,
      List<ContentUnitEntity> contentUnitList});
}

/// @nodoc
class __$$RoundEntityImplCopyWithImpl<$Res>
    extends _$RoundEntityCopyWithImpl<$Res, _$RoundEntityImpl>
    implements _$$RoundEntityImplCopyWith<$Res> {
  __$$RoundEntityImplCopyWithImpl(
      _$RoundEntityImpl _value, $Res Function(_$RoundEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoundEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roundSeq = null,
    Object? name = null,
    Object? contentUnitList = null,
  }) {
    return _then(_$RoundEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      roundSeq: null == roundSeq
          ? _value.roundSeq
          : roundSeq // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contentUnitList: null == contentUnitList
          ? _value._contentUnitList
          : contentUnitList // ignore: cast_nullable_to_non_nullable
              as List<ContentUnitEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoundEntityImpl implements _RoundEntity {
  const _$RoundEntityImpl(
      {required this.id,
      required this.roundSeq,
      required this.name,
      required final List<ContentUnitEntity> contentUnitList})
      : _contentUnitList = contentUnitList;

  factory _$RoundEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoundEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int roundSeq;
  @override
  final String name;
  final List<ContentUnitEntity> _contentUnitList;
  @override
  List<ContentUnitEntity> get contentUnitList {
    if (_contentUnitList is EqualUnmodifiableListView) return _contentUnitList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contentUnitList);
  }

  @override
  String toString() {
    return 'RoundEntity(id: $id, roundSeq: $roundSeq, name: $name, contentUnitList: $contentUnitList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoundEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roundSeq, roundSeq) ||
                other.roundSeq == roundSeq) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._contentUnitList, _contentUnitList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, roundSeq, name,
      const DeepCollectionEquality().hash(_contentUnitList));

  /// Create a copy of RoundEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoundEntityImplCopyWith<_$RoundEntityImpl> get copyWith =>
      __$$RoundEntityImplCopyWithImpl<_$RoundEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoundEntityImplToJson(
      this,
    );
  }
}

abstract class _RoundEntity implements RoundEntity {
  const factory _RoundEntity(
          {required final int id,
          required final int roundSeq,
          required final String name,
          required final List<ContentUnitEntity> contentUnitList}) =
      _$RoundEntityImpl;

  factory _RoundEntity.fromJson(Map<String, dynamic> json) =
      _$RoundEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get roundSeq;
  @override
  String get name;
  @override
  List<ContentUnitEntity> get contentUnitList;

  /// Create a copy of RoundEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoundEntityImplCopyWith<_$RoundEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
