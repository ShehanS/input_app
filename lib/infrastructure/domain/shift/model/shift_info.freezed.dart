// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShiftInfo _$ShiftInfoFromJson(Map<String, dynamic> json) {
  return _ShiftInfo.fromJson(json);
}

/// @nodoc
mixin _$ShiftInfo {
  String? get shiftId => throw _privateConstructorUsedError;
  String? get shiftName => throw _privateConstructorUsedError;
  String? get shiftStart => throw _privateConstructorUsedError;
  String? get shiftEnd => throw _privateConstructorUsedError;

  /// Serializes this ShiftInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiftInfoCopyWith<ShiftInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftInfoCopyWith<$Res> {
  factory $ShiftInfoCopyWith(ShiftInfo value, $Res Function(ShiftInfo) then) =
      _$ShiftInfoCopyWithImpl<$Res, ShiftInfo>;
  @useResult
  $Res call(
      {String? shiftId,
      String? shiftName,
      String? shiftStart,
      String? shiftEnd});
}

/// @nodoc
class _$ShiftInfoCopyWithImpl<$Res, $Val extends ShiftInfo>
    implements $ShiftInfoCopyWith<$Res> {
  _$ShiftInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = freezed,
    Object? shiftName = freezed,
    Object? shiftStart = freezed,
    Object? shiftEnd = freezed,
  }) {
    return _then(_value.copyWith(
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftName: freezed == shiftName
          ? _value.shiftName
          : shiftName // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftStart: freezed == shiftStart
          ? _value.shiftStart
          : shiftStart // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftEnd: freezed == shiftEnd
          ? _value.shiftEnd
          : shiftEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftInfoImplCopyWith<$Res>
    implements $ShiftInfoCopyWith<$Res> {
  factory _$$ShiftInfoImplCopyWith(
          _$ShiftInfoImpl value, $Res Function(_$ShiftInfoImpl) then) =
      __$$ShiftInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? shiftId,
      String? shiftName,
      String? shiftStart,
      String? shiftEnd});
}

/// @nodoc
class __$$ShiftInfoImplCopyWithImpl<$Res>
    extends _$ShiftInfoCopyWithImpl<$Res, _$ShiftInfoImpl>
    implements _$$ShiftInfoImplCopyWith<$Res> {
  __$$ShiftInfoImplCopyWithImpl(
      _$ShiftInfoImpl _value, $Res Function(_$ShiftInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = freezed,
    Object? shiftName = freezed,
    Object? shiftStart = freezed,
    Object? shiftEnd = freezed,
  }) {
    return _then(_$ShiftInfoImpl(
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftName: freezed == shiftName
          ? _value.shiftName
          : shiftName // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftStart: freezed == shiftStart
          ? _value.shiftStart
          : shiftStart // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftEnd: freezed == shiftEnd
          ? _value.shiftEnd
          : shiftEnd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftInfoImpl implements _ShiftInfo {
  _$ShiftInfoImpl(
      {this.shiftId, this.shiftName, this.shiftStart, this.shiftEnd});

  factory _$ShiftInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftInfoImplFromJson(json);

  @override
  final String? shiftId;
  @override
  final String? shiftName;
  @override
  final String? shiftStart;
  @override
  final String? shiftEnd;

  @override
  String toString() {
    return 'ShiftInfo(shiftId: $shiftId, shiftName: $shiftName, shiftStart: $shiftStart, shiftEnd: $shiftEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftInfoImpl &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.shiftName, shiftName) ||
                other.shiftName == shiftName) &&
            (identical(other.shiftStart, shiftStart) ||
                other.shiftStart == shiftStart) &&
            (identical(other.shiftEnd, shiftEnd) ||
                other.shiftEnd == shiftEnd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shiftId, shiftName, shiftStart, shiftEnd);

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftInfoImplCopyWith<_$ShiftInfoImpl> get copyWith =>
      __$$ShiftInfoImplCopyWithImpl<_$ShiftInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftInfoImplToJson(
      this,
    );
  }
}

abstract class _ShiftInfo implements ShiftInfo {
  factory _ShiftInfo(
      {final String? shiftId,
      final String? shiftName,
      final String? shiftStart,
      final String? shiftEnd}) = _$ShiftInfoImpl;

  factory _ShiftInfo.fromJson(Map<String, dynamic> json) =
      _$ShiftInfoImpl.fromJson;

  @override
  String? get shiftId;
  @override
  String? get shiftName;
  @override
  String? get shiftStart;
  @override
  String? get shiftEnd;

  /// Create a copy of ShiftInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiftInfoImplCopyWith<_$ShiftInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
