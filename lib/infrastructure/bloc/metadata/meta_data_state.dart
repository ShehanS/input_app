part of 'meta_data_bloc.dart';

@freezed
class MetaDataState extends Equatable with _$MetaDataState {
  MetaDataState._();

  factory MetaDataState.initial() => MetaDataState(factoryIssueList: null);

  factory MetaDataState({List<FactoryIssueListEntity>? factoryIssueList}) =
      _MetaDataState;

  @override
  List<Object?> get props => [factoryIssueList];
}
