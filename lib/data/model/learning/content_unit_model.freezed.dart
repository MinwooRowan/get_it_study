// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_unit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentUnitModel _$ContentUnitModelFromJson(Map<String, dynamic> json) {
  return _ContentUnitModel.fromJson(json);
}

/// @nodoc
mixin _$ContentUnitModel {
  int get id => throw _privateConstructorUsedError;
  int get seq => throw _privateConstructorUsedError;
  String get unitName => throw _privateConstructorUsedError;
  ContentUnitType get contentUnitType => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;

  /// Serializes this ContentUnitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentUnitModelCopyWith<ContentUnitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentUnitModelCopyWith<$Res> {
  factory $ContentUnitModelCopyWith(
          ContentUnitModel value, $Res Function(ContentUnitModel) then) =
      _$ContentUnitModelCopyWithImpl<$Res, ContentUnitModel>;
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
class _$ContentUnitModelCopyWithImpl<$Res, $Val extends ContentUnitModel>
    implements $ContentUnitModelCopyWith<$Res> {
  _$ContentUnitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentUnitModel
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
abstract class _$$ContentUnitModelImplCopyWith<$Res>
    implements $ContentUnitModelCopyWith<$Res> {
  factory _$$ContentUnitModelImplCopyWith(_$ContentUnitModelImpl value,
          $Res Function(_$ContentUnitModelImpl) then) =
      __$$ContentUnitModelImplCopyWithImpl<$Res>;
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
class __$$ContentUnitModelImplCopyWithImpl<$Res>
    extends _$ContentUnitModelCopyWithImpl<$Res, _$ContentUnitModelImpl>
    implements _$$ContentUnitModelImplCopyWith<$Res> {
  __$$ContentUnitModelImplCopyWithImpl(_$ContentUnitModelImpl _value,
      $Res Function(_$ContentUnitModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentUnitModel
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
    return _then(_$ContentUnitModelImpl(
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
class _$ContentUnitModelImpl implements _ContentUnitModel {
  const _$ContentUnitModelImpl(
      {required this.id,
      required this.seq,
      required this.unitName,
      required this.contentUnitType,
      required this.isCompleted,
      this.reviewCount = 0});

  factory _$ContentUnitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentUnitModelImplFromJson(json);

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
    return 'ContentUnitModel(id: $id, seq: $seq, unitName: $unitName, contentUnitType: $contentUnitType, isCompleted: $isCompleted, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentUnitModelImpl &&
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

  /// Create a copy of ContentUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentUnitModelImplCopyWith<_$ContentUnitModelImpl> get copyWith =>
      __$$ContentUnitModelImplCopyWithImpl<_$ContentUnitModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentUnitModelImplToJson(
      this,
    );
  }
}

abstract class _ContentUnitModel implements ContentUnitModel {
  const factory _ContentUnitModel(
      {required final int id,
      required final int seq,
      required final String unitName,
      required final ContentUnitType contentUnitType,
      required final bool isCompleted,
      final int reviewCount}) = _$ContentUnitModelImpl;

  factory _ContentUnitModel.fromJson(Map<String, dynamic> json) =
      _$ContentUnitModelImpl.fromJson;

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

  /// Create a copy of ContentUnitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentUnitModelImplCopyWith<_$ContentUnitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
