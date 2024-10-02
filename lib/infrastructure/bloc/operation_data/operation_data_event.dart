part of 'operation_data_bloc.dart';

@freezed
class OperationDataEvent with _$OperationDataEvent {
  const factory OperationDataEvent.started() = _Started;
  const factory OperationDataEvent.getIssueList({required String orgKey, required FetchPolicy fetchPolicy}) = GetIssueList;
  const factory OperationDataEvent.getFactoryResource({required String orgKey, required FetchPolicy fetchPolicy}) = GetFactoryResource;
  const factory OperationDataEvent.clearErrorDialogProps() = ClearErrorDialogProps;
}