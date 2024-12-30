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
  int? get createAt => throw _privateConstructorUsedError;
  SubIssueList? get issue => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  ShiftInfo? get shift => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  bool get isPaused => throw _privateConstructorUsedError;
  int? get seconds => throw _privateConstructorUsedError;

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
  $Res call(
      {int? createAt,
      SubIssueList? issue,
      User? user,
      ShiftInfo? shift,
      String? status,
      bool isRunning,
      bool isPaused,
      int? seconds});

  $SubIssueListCopyWith<$Res>? get issue;
  $UserCopyWith<$Res>? get user;
  $ShiftInfoCopyWith<$Res>? get shift;
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
    Object? createAt = freezed,
    Object? issue = freezed,
    Object? user = freezed,
    Object? shift = freezed,
    Object? status = freezed,
    Object? isRunning = null,
    Object? isPaused = null,
    Object? seconds = freezed,
  }) {
    return _then(_value.copyWith(
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as SubIssueList?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftInfo?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubIssueListCopyWith<$Res>? get issue {
    if (_value.issue == null) {
      return null;
    }

    return $SubIssueListCopyWith<$Res>(_value.issue!, (value) {
      return _then(_value.copyWith(issue: value) as $Val);
    });
  }

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShiftInfoCopyWith<$Res>? get shift {
    if (_value.shift == null) {
      return null;
    }

    return $ShiftInfoCopyWith<$Res>(_value.shift!, (value) {
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
  $Res call(
      {int? createAt,
      SubIssueList? issue,
      User? user,
      ShiftInfo? shift,
      String? status,
      bool isRunning,
      bool isPaused,
      int? seconds});

  @override
  $SubIssueListCopyWith<$Res>? get issue;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ShiftInfoCopyWith<$Res>? get shift;
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
    Object? createAt = freezed,
    Object? issue = freezed,
    Object? user = freezed,
    Object? shift = freezed,
    Object? status = freezed,
    Object? isRunning = null,
    Object? isPaused = null,
    Object? seconds = freezed,
  }) {
    return _then(_$DowntimeEventImpl(
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as SubIssueList?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as ShiftInfo?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: null == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DowntimeEventImpl implements _DowntimeEvent {
  _$DowntimeEventImpl(
      {this.createAt,
      this.issue,
      this.user,
      this.shift,
      this.status,
      required this.isRunning,
      required this.isPaused,
      this.seconds});

  factory _$DowntimeEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$DowntimeEventImplFromJson(json);

  @override
  final int? createAt;
  @override
  final SubIssueList? issue;
  @override
  final User? user;
  @override
  final ShiftInfo? shift;
  @override
  final String? status;
  @override
  final bool isRunning;
  @override
  final bool isPaused;
  @override
  final int? seconds;

  @override
  String toString() {
    return 'DowntimeEvent(createAt: $createAt, issue: $issue, user: $user, shift: $shift, status: $status, isRunning: $isRunning, isPaused: $isPaused, seconds: $seconds)';
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
            (identical(other.shift, shift) || other.shift == shift) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createAt, issue, user, shift,
      status, isRunning, isPaused, seconds);

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
      {final int? createAt,
      final SubIssueList? issue,
      final User? user,
      final ShiftInfo? shift,
      final String? status,
      required final bool isRunning,
      required final bool isPaused,
      final int? seconds}) = _$DowntimeEventImpl;

  factory _DowntimeEvent.fromJson(Map<String, dynamic> json) =
      _$DowntimeEventImpl.fromJson;

  @override
  int? get createAt;
  @override
  SubIssueList? get issue;
  @override
  User? get user;
  @override
  ShiftInfo? get shift;
  @override
  String? get status;
  @override
  bool get isRunning;
  @override
  bool get isPaused;
  @override
  int? get seconds;

  /// Create a copy of DowntimeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DowntimeEventImplCopyWith<_$DowntimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountDown _$CountDownFromJson(Map<String, dynamic> json) {
  return _CountDown.fromJson(json);
}

/// @nodoc
mixin _$CountDown {
  String get seconds => throw _privateConstructorUsedError;
  String get minutes => throw _privateConstructorUsedError;
  String get hours => throw _privateConstructorUsedError;

  /// Serializes this CountDown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountDown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountDownCopyWith<CountDown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDownCopyWith<$Res> {
  factory $CountDownCopyWith(CountDown value, $Res Function(CountDown) then) =
      _$CountDownCopyWithImpl<$Res, CountDown>;
  @useResult
  $Res call({String seconds, String minutes, String hours});
}

/// @nodoc
class _$CountDownCopyWithImpl<$Res, $Val extends CountDown>
    implements $CountDownCopyWith<$Res> {
  _$CountDownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountDown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? minutes = null,
    Object? hours = null,
  }) {
    return _then(_value.copyWith(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountDownImplCopyWith<$Res>
    implements $CountDownCopyWith<$Res> {
  factory _$$CountDownImplCopyWith(
          _$CountDownImpl value, $Res Function(_$CountDownImpl) then) =
      __$$CountDownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seconds, String minutes, String hours});
}

/// @nodoc
class __$$CountDownImplCopyWithImpl<$Res>
    extends _$CountDownCopyWithImpl<$Res, _$CountDownImpl>
    implements _$$CountDownImplCopyWith<$Res> {
  __$$CountDownImplCopyWithImpl(
      _$CountDownImpl _value, $Res Function(_$CountDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountDown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
    Object? minutes = null,
    Object? hours = null,
  }) {
    return _then(_$CountDownImpl(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as String,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountDownImpl implements _CountDown {
  _$CountDownImpl(
      {required this.seconds, required this.minutes, required this.hours});

  factory _$CountDownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountDownImplFromJson(json);

  @override
  final String seconds;
  @override
  final String minutes;
  @override
  final String hours;

  @override
  String toString() {
    return 'CountDown(seconds: $seconds, minutes: $minutes, hours: $hours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDownImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seconds, minutes, hours);

  /// Create a copy of CountDown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountDownImplCopyWith<_$CountDownImpl> get copyWith =>
      __$$CountDownImplCopyWithImpl<_$CountDownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountDownImplToJson(
      this,
    );
  }
}

abstract class _CountDown implements CountDown {
  factory _CountDown(
      {required final String seconds,
      required final String minutes,
      required final String hours}) = _$CountDownImpl;

  factory _CountDown.fromJson(Map<String, dynamic> json) =
      _$CountDownImpl.fromJson;

  @override
  String get seconds;
  @override
  String get minutes;
  @override
  String get hours;

  /// Create a copy of CountDown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountDownImplCopyWith<_$CountDownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
