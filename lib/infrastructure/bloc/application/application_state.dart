part of 'application_bloc.dart';

@freezed
class ApplicationState extends Equatable with _$ApplicationState {
  ApplicationState._();
  factory ApplicationState.initial() => ApplicationState(station: null, deptIssueList: const [], color:"", resource: null, downtimeEvent: null, downtimeEventList: []);
  factory ApplicationState({Station? station, List<SubIssueList> ? deptIssueList, String ? color, required Resource ? resource, DowntimeEvent ? downtimeEvent, List<DowntimeEvent> ? downtimeEventList}) =
      _ApplicationState;

  @override
  List<Object?> get props => [station, deptIssueList, color, resource, downtimeEvent, downtimeEventList];
}
