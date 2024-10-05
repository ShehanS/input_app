// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downtime_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DowntimeEvent _$DowntimeEventFromJson(Map<String, dynamic> json) {
  return _DowntimeEvent.fromJson(json);
}

/// @nodoc
mixin _$DowntimeEvent {
  int get createAt => throw _privateConstructorUsedError;
  SubIssueList get issue => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  ShiftInfo get shift => throw _privateConstructorUsedError;

  /// Serializes this DowntimeEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DowntimeEventCopyWith<DowntimeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DowntimeEventCopyWith<$Res> {
  factory $DowntimeEventCopyWith(
          DowntimeEvent value, $Res Function(DowntimeEvent) then) =
      _$DowntimeEventCopyWithImpl<$Res, DowntimeEvent>;
  @useResult
  $Res call({int createAt, SubIssueList issue, User user, ShiftInfo shift});

  $SubIssueListCopyWith<$Res> get issue;
  $UserCopyWith<$Res> get user;
  $ShiftInfoCopyWith<$Res> get shift;
}

/// @nodoc
class _$DowntimeEventCopyWithImpl<$Res, $Val extends DowntimeEvent>
    implements $DowntimeEventCopyWith<$Res> {
  _$DowntimeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAt = null,
    Object? issue = null,
    Object? user = null,
    Object? shift = null,
  }) {
    return _then(_value.copyWith(
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as SubIssueList,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftInfo,
    ) as $Val);
  }

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubIssueListCopyWith<$Res> get issue {
    return $SubIssueListCopyWith<$Res>(_value.issue, (value) {
      return _then(_value.copyWith(issue: value) as $Val);
    });
  }

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShiftInfoCopyWith<$Res> get shift {
    return $ShiftInfoCopyWith<$Res>(_value.shift, (value) {
      return _then(_value.copyWith(shift: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DowntimeEventImplCopyWith<$Res>
    implements $DowntimeEventCopyWith<$Res> {
  factory _$$DowntimeEventImplCopyWith(
          _$DowntimeEventImpl value, $Res Function(_$DowntimeEventImpl) then) =
      __$$DowntimeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int createAt, SubIssueList issue, User user, ShiftInfo shift});

  @override
  $SubIssueListCopyWith<$Res> get issue;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $ShiftInfoCopyWith<$Res> get shift;
}

/// @nodoc
class __$$DowntimeEventImplCopyWithImpl<$Res>
    extends _$DowntimeEventCopyWithImpl<$Res, _$DowntimeEventImpl>
    implements _$$DowntimeEventImplCopyWith<$Res> {
  __$$DowntimeEventImplCopyWithImpl(
      _$DowntimeEventImpl _value, $Res Function(_$DowntimeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAt = null,
    Object? issue = null,
    Object? user = null,
    Object? shift = null,
  }) {
    return _then(_$DowntimeEventImpl(
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as SubIssueList,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      shift: null == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DowntimeEventImpl implements _DowntimeEvent {
  _$DowntimeEventImpl(
      {required this.createAt,
      required this.issue,
      required this.user,
      required this.shift});

  factory _$DowntimeEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$DowntimeEventImplFromJson(json);

  @override
  final int createAt;
  @override
  final SubIssueList issue;
  @override
  final User user;
  @override
  final ShiftInfo shift;

  @override
  String toString() {
    return 'DowntimeEvent(createAt: $createAt, issue: $issue, user: $user, shift: $shift)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DowntimeEventImpl &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.shift, shift) || other.shift == shift));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createAt, issue, user, shift);

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DowntimeEventImplCopyWith<_$DowntimeEventImpl> get copyWith =>
      __$$DowntimeEventImplCopyWithImpl<_$DowntimeEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DowntimeEventImplToJson(
      this,
    );
  }
}

abstract class _DowntimeEvent implements DowntimeEvent {
  factory _DowntimeEvent(
      {required final int createAt,
      required final SubIssueList issue,
      required final User user,
      required final ShiftInfo shift}) = _$DowntimeEventImpl;

  factory _DowntimeEvent.fromJson(Map<String, dynamic> json) =
      _$DowntimeEventImpl.fromJson;

  @override
  int get createAt;
  @override
  SubIssueList get issue;
  @override
  User get user;
  @override
  ShiftInfo get shift;

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DowntimeEventImplCopyWith<_$DowntimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
