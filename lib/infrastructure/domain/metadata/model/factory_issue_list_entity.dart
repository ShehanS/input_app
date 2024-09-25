import 'package:freezed_annotation/freezed_annotation.dart';
part 'factory_issue_list_entity.freezed.dart';

part 'factory_issue_list_entity.g.dart';
@freezed
class FactoryIssueListEntity with _$FactoryIssueListEntity {
  factory FactoryIssueListEntity({
    required String id,
    String? listType,
    String? displayName,
    String? factoryId,
    String? module,
    List<SubIssueListEntity>? issueList,
  }) = _FactoryIssueListEntity;

  factory FactoryIssueListEntity.fromJson(Map<String, dynamic> json) =>
      _$FactoryIssueListEntityFromJson(json);
}

@freezed
class SubIssueListEntity with _$SubIssueListEntity {
  factory SubIssueListEntity({
    required String categoryType,
    String? name,
    int? level,
    String? displayName,
    String? issueCode,
    String? issueName,
    String? description,
    List<SubIssueListEntity>? issueList,
  }) = _SubIssueListEntity;

  factory SubIssueListEntity.fromJson(Map<String, dynamic> json) =>
      _$SubIssueListEntityFromJson(json);
}
