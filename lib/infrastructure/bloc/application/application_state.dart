part of 'application_bloc.dart';

@freezed
class ApplicationState extends Equatable with _$ApplicationState {
  ApplicationState._();
  factory ApplicationState.initial() => ApplicationState(station: null, deptIssueList: const []);
  factory ApplicationState({StationModel? station, List<SubIssueListEntity> ? deptIssueList}) =
      _ApplicationState;

  @override
  List<Object?> get props => [station, deptIssueList];
}
