// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_unit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentUnitEntity _$ContentUnitEntityFromJson(Map<String, dynamic> json) {
  return _ContentUnitEntity.fromJson(json);
}

/// @nodoc
mixin _$ContentUnitEntity {
  int get id => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;
  String get unitName => throw _privateConstructorUsedError;
  ContentUnitType get contentUnitType => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;

  /// Serializes this ContentUnitEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentUnitEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentUnitEntityCopyWith<ContentUnitEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentUnitEntityCopyWith<$Res> {
  factory $ContentUnitEntityCopyWith(
          ContentUnitEntity value, $Res Function(ContentUnitEntity) then) =
      _$ContentUnitEntityCopyWithImpl<$Res, ContentUnitEntity>;
  @useResult
  $Res call(
      {int id,
      int seq,
      String unitName,
      ContentUnitType contentUnitType,
      bool isCompleted,
      int reviewCount});
}

/// @nodoc
class _$ContentUnitEntityCopyWithImpl<$Res, $Val extends ContentUnitEntity>
    implements $ContentUnitEntityCopyWith<$Res> {
  _$ContentUnitEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentUnitEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? seq = null,
    Object? unitName = null,
    Object? contentUnitType = null,
    Object? isCompleted = null,
    Object? reviewCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      contentUnitType: null == contentUnitType
          ? _value.contentUnitType
          : contentUnitType // ignore: cast_nullable_to_non_nullable
              as ContentUnitType,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentUnitEntityImplCopyWith<$Res>
    implements $ContentUnitEntityCopyWith<$Res> {
  factory _$$ContentUnitEntityImplCopyWith(_$ContentUnitEntityImpl value,
          $Res Function(_$ContentUnitEntityImpl) then) =
      __$$ContentUnitEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int seq,
      String unitName,
      ContentUnitType contentUnitType,
      bool isCompleted,
      int reviewCount});
}

/// @nodoc
class __$$ContentUnitEntityImplCopyWithImpl<$Res>
    extends _$ContentUnitEntityCopyWithImpl<$Res, _$ContentUnitEntityImpl>
    implements _$$ContentUnitEntityImplCopyWith<$Res> {
  __$$ContentUnitEntityImplCopyWithImpl(_$ContentUnitEntityImpl _value,
      $Res Function(_$ContentUnitEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentUnitEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? seq = null,
    Object? unitName = null,
    Object? contentUnitType = null,
    Object? isCompleted = null,
    Object? reviewCount = null,
  }) {
    return _then(_$ContentUnitEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
      unitName: null == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String,
      contentUnitType: null == contentUnitType
          ? _value.contentUnitType
          : contentUnitType // ignore: cast_nullable_to_non_nullable
              as ContentUnitType,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentUnitEntityImpl implements _ContentUnitEntity {
  const _$ContentUnitEntityImpl(
      {required this.id,
      required this.seq,
      required this.unitName,
      required this.contentUnitType,
      required this.isCompleted,
      this.reviewCount = 0});

  factory _$ContentUnitEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentUnitEntityImplFromJson(json);

  @override
  final int id;
  @override
  final int seq;
  @override
  final String unitName;
  @override
  final ContentUnitType contentUnitType;
  @override
  final bool isCompleted;
  @override
  @JsonKey()
  final int reviewCount;

  @override
  String toString() {
    return 'ContentUnitEntity(id: $id, seq: $seq, unitName: $unitName, contentUnitType: $contentUnitType, isCompleted: $isCompleted, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentUnitEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.seq, seq) || other.seq == seq) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.contentUnitType, contentUnitType) ||
                other.contentUnitType == contentUnitType) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, seq, unitName,
      contentUnitType, isCompleted, reviewCount);

  /// Create a copy of ContentUnitEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentUnitEntityImplCopyWith<_$ContentUnitEntityImpl> get copyWith =>
      __$$ContentUnitEntityImplCopyWithImpl<_$ContentUnitEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentUnitEntityImplToJson(
      this,
    );
  }
}

abstract class _ContentUnitEntity implements ContentUnitEntity {
  const factory _ContentUnitEntity(
      {required final int id,
      required final int seq,
      required final String unitName,
      required final ContentUnitType contentUnitType,
      required final bool isCompleted,
      final int reviewCount}) = _$ContentUnitEntityImpl;

  factory _ContentUnitEntity.fromJson(Map<String, dynamic> json) =
      _$ContentUnitEntityImpl.fromJson;

  @override
  int get id;
  @override
  int get seq;
  @override
  String get unitName;
  @override
  ContentUnitType get contentUnitType;
  @override
  bool get isCompleted;
  @override
  int get reviewCount;

  /// Create a copy of ContentUnitEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentUnitEntityImplCopyWith<_$ContentUnitEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
