part of 'app_config_bloc.dart';

@freezed
class AppConfigState extends Equatable with _$AppConfigState {
  AppConfigState._();
  factory AppConfigState.initial() => AppConfigState(appConfig: null);
  factory AppConfigState({required dynamic appConfig}) = _AppConfigState;

  @override
  List<Object?> get props => [appConfig];
}
