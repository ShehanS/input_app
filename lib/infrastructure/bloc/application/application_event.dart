part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.started() = _Started;
  const factory ApplicationEvent.setDefaultStation() = SetDefaultStation;
  const factory ApplicationEvent.changeStation(StationModel station) = ChangeStation;
}