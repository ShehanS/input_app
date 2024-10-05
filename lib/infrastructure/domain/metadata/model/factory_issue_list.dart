import 'package:freezed_annotation/freezed_annotation.dart';
part 'factory_issue_list.freezed.dart';

part 'factory_issue_list.g.dart';
@freezed
class FactoryIssueList with _$FactoryIssueList {
  factory FactoryIssueList({
    required String id,
    String? listType,
    String? displayName,
    String? factoryId,
    String? module,
    String? department,
    String? departmentId,
    String? imageSrc,
    String? color,
    List<SubIssueList>? issueList,
  }) = _FactoryIssueList;

  factory FactoryIssueList.fromJson(Map<String, dynamic> json) =>
      _$FactoryIssueListFromJson(json);
}

@freezed
class SubIssueList with _$SubIssueList {
  factory SubIssueList({
    required String categoryType,
    String? name,
    String? color,
    int? level,
    String? displayName,
    String? issueCode,
    String? issueName,
    String? description,
    String? department,
    String? departmentId,
    String? imageSrc,
    List<SubIssueList>? issueList,
  }) = _SubIssueList;

  factory SubIssueList.fromJson(Map<String, dynamic> json) =>
      _$SubIssueListFromJson(json);
}
