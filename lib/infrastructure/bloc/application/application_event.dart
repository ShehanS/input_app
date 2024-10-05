part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.started() = _Started;
  const factory ApplicationEvent.setDefaultStation() = SetDefaultStation;
  const factory ApplicationEvent.changeStation(Station station) = ChangeStation;
  const factory ApplicationEvent.selectDepartment(List<SubIssueList> deptIssueList, String color) = SelectDepartment;
  const factory ApplicationEvent.selectResource(Resource resource) = SelectResource;
}