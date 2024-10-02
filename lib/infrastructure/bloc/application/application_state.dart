part of 'application_bloc.dart';

@freezed
class ApplicationState extends Equatable with _$ApplicationState {
  ApplicationState._();
  factory ApplicationState.initial() => ApplicationState(station: null, deptIssueList: const [], color:"", resource: null);
  factory ApplicationState({StationModel? station, List<SubIssueListEntity> ? deptIssueList, String ? color, required ResourceEntity ? resource}) =
      _ApplicationState;

  @override
  List<Object?> get props => [station, deptIssueList, color, resource];
}
