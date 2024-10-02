part of 'operation_data_bloc.dart';

@freezed
class OperationDataState extends Equatable with _$OperationDataState {
  OperationDataState._();

  factory OperationDataState.initial() => OperationDataState(issueList: const [], isLoading: false, errorDialogProps: null, resources: []);

  factory OperationDataState({required List<SubIssueListEntity> issueList, required bool isLoading, ErrorDialogProps ? errorDialogProps, required List<ResourceEntity> ? resources}) =
      _OperationDataState;

  @override
  List<Object?> get props => [issueList, isLoading, errorDialogProps, resources];
}
