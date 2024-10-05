// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downtime_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DowntimeEventImpl _$$DowntimeEventImplFromJson(Map<String, dynamic> json) =>
    _$DowntimeEventImpl(
      createAt: (json['createAt'] as num).toInt(),
      issue: SubIssueList.fromJson(json['issue'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      shift: ShiftInfo.fromJson(json['shift'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DowntimeEventImplToJson(_$DowntimeEventImpl instance) =>
    <String, dynamic>{
      'createAt': instance.createAt,
      'issue': instance.issue,
      'user': instance.user,
      'shift': instance.shift,
    };
