part of 'meta_data_bloc.dart';

@freezed
class MetaDataEvent with _$MetaDataEvent {
  const factory MetaDataEvent.started() = _Started;
  const factory MetaDataEvent.getFactoryIssueList(String factoryId, String module) = GetFactoryIssueList;
}