import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shift/model/shift_info.dart';
import '../../user/model/user.dart';
part 'downtime_event.freezed.dart';
part 'downtime_event.g.dart';
@freezed
class DowntimeEvent with _$DowntimeEvent{
  factory DowntimeEvent({
      required int createAt,
      required SubIssueList issue,
      required User user,
      required ShiftInfo shift

}) = _DowntimeEvent;

  factory DowntimeEvent.fromJson(Map<String, dynamic> json) =>
      _$DowntimeEventFromJson(json);

}
