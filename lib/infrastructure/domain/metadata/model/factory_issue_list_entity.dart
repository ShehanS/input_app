import 'package:freezed_annotation/freezed_annotation.dart';

part 'factory_issue_list_entity.freezed.dart';

part 'factory_issue_list_entity.g.dart';

@freezed
class FactoryIssueListEntity with _$FactoryIssueListEntity {
  factory FactoryIssueListEntity({
    required String id,
    required String listType,
    required String displayName,
    required String factoryId,
    required String module,
    required List<IssueListEntity> issueList,
  }) = _FactoryIssueListEntity;

  factory FactoryIssueListEntity.fromJson(Map<String, dynamic> json) =>
      _$FactoryIssueListEntityFromJson(json);
}

@freezed
class IssueListEntity with _$IssueListEntity {
  factory IssueListEntity({
    required String categoryType,
    String? name,
    required int level,
    required String displayName,
    String? issueCode,
    String? issueName,
    String? description,
    List<IssueListEntity>? issueList,
  }) = _IssueListEntity;

  factory IssueListEntity.fromJson(Map<String, dynamic> json) =>
      _$IssueListEntityFromJson(json);
}
