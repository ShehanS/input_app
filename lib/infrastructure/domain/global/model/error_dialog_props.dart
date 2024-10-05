import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_dialog_props.freezed.dart';
part 'error_dialog_props.g.dart';
@freezed
class ErrorDialogProps with _$ErrorDialogProps {
  factory ErrorDialogProps({
    required String message,
    required String title,
    required bool isOpen}) = _ErrorDialogProps;

  factory ErrorDialogProps.fromJson(Map<String, dynamic> json) =>
      _$ErrorDialogPropsFromJson(json);
}
