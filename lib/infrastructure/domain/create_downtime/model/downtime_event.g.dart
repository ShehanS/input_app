// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downtime_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DowntimeEventImpl _$$DowntimeEventImplFromJson(Map<String, dynamic> json) =>
    _$DowntimeEventImpl(
      createAt: (json['createAt'] as num?)?.toInt(),
      issue: json['issue'] == null
          ? null
          : SubIssueList.fromJson(json['issue'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      shift: json['shift'] == null
          ? null
          : ShiftInfo.fromJson(json['shift'] as Map<String, dynamic>),
      status: json['status'] as String?,
      isRunning: json['isRunning'] as bool,
      isPaused: json['isPaused'] as bool,
      seconds: (json['seconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DowntimeEventImplToJson(_$DowntimeEventImpl instance) =>
    <String, dynamic>{
      'createAt': instance.createAt,
      'issue': instance.issue,
      'user': instance.user,
      'shift': instance.shift,
      'status': instance.status,
      'isRunning': instance.isRunning,
      'isPaused': instance.isPaused,
      'seconds': instance.seconds,
    };

_$CountDownImpl _$$CountDownImplFromJson(Map<String, dynamic> json) =>
    _$CountDownImpl(
      seconds: json['seconds'] as String,
      minutes: json['minutes'] as String,
      hours: json['hours'] as String,
    );

Map<String, dynamic> _$$CountDownImplToJson(_$CountDownImpl instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
      'minutes': instance.minutes,
      'hours': instance.hours,
    };
