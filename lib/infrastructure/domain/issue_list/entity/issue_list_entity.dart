import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_list_entity.freezed.dart';

part 'issue_list_entity.g.dart';

@freezed
class IssueListEntity with _$IssueListEntity {
  factory IssueListEntity(
      {required String id,
      String? listType,
      String? displayName,
      String? orgKey,
      String? module,
      List<IssueList> ? issueList}) = _IssueListEntity;

  factory IssueListEntity.fromJson(Map<String, dynamic> json) =>
      _$IssueListEntityFromJson(json);
}

@freezed
class IssueList with _$IssueList {
  factory IssueList(
      {String? categoryType,
      String? name,
      int? level,
      String? displayName,
      String? issueCode,
      String? issueName,
      String? description,
      List<IssueList> ? issueList}) = _IssueList;

  factory IssueList.fromJson(Map<String, dynamic> json) =>
      _$IssueListFromJson(json);
}
