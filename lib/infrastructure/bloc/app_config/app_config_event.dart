part of 'app_config_bloc.dart';

@freezed
class AppConfigEvent with _$AppConfigEvent {
  const factory AppConfigEvent.started() = _Started;
  const factory AppConfigEvent.getAppConfig({required String token}) = GetAppConfig;
  const factory AppConfigEvent.clearErrorDialogProps() = ClearErrorDialogProps;
}