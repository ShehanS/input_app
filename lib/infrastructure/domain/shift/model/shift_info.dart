import 'package:freezed_annotation/freezed_annotation.dart';
part 'shift_info.freezed.dart';
part 'shift_info.g.dart';

@freezed
class ShiftInfo with _$ShiftInfo{
  factory ShiftInfo({
    String ? shiftId,
    String ? shiftName,
    String ? shiftStart,
    String ? shiftEnd
})= _ShiftInfo;


factory ShiftInfo.fromJson(Map<String, dynamic> json) =>
_$ShiftInfoFromJson(json);
}