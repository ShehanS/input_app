import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shift/model/shift_info.dart';
import '../../user/model/user.dart';

part 'downtime_event.freezed.dart';

part 'downtime_event.g.dart';

@freezed
class DowntimeEvent with _$DowntimeEvent {
  factory DowntimeEvent(
      {int? createAt,
      SubIssueList? issue,
      User? user,
      ShiftInfo? shift,
      String? status,
      required bool isRunning,
      required bool isPaused,
      int? seconds
      // CountDown ? countdown

      }) = _DowntimeEvent;

  factory DowntimeEvent.fromJson(Map<String, dynamic> json) =>
      _$DowntimeEventFromJson(json);
}

@freezed
class CountDown with _$CountDown {
  factory CountDown(
      {required String seconds,
      required String minutes,
      required String hours}) = _CountDown;

  factory CountDown.fromJson(Map<String, dynamic> json) =>
      _$CountDownFromJson(json);
}
