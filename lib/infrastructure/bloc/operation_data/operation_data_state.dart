part of 'operation_data_bloc.dart';

@freezed
class OperationDataState extends Equatable with _$OperationDataState {
  OperationDataState._();

  factory OperationDataState.initial() => OperationDataState(issueList: [], isLoading: false);

  factory OperationDataState({required List<FactoryIssueListEntity> issueList, required bool isLoading, ErrorDialogProps ? errorDialogProps}) =
      _OperationDataState;

  @override
  List<Object?> get props => [issueList, isLoading, errorDialogProps];
}
