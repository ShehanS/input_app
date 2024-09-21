import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_dialog_props.freezed.dart';

@freezed
class ErrorDialogProps with _$ErrorDialogProps {
  factory ErrorDialogProps({
    required String message,
    required String title,
    required bool isOpen}) = _ErrorDialogProps;
}
