// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssueListEntityImpl _$$IssueListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$IssueListEntityImpl(
      id: json['id'] as String,
      listType: json['listType'] as String?,
      displayName: json['displayName'] as String?,
      orgKey: json['orgKey'] as String?,
      module: json['module'] as String?,
      issueList: (json['issueList'] as List<dynamic>?)
          ?.map((e) => IssueList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IssueListEntityImplToJson(
        _$IssueListEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listType': instance.listType,
      'displayName': instance.displayName,
      'orgKey': instance.orgKey,
      'module': instance.module,
      'issueList': instance.issueList,
    };

_$IssueListImpl _$$IssueListImplFromJson(Map<String, dynamic> json) =>
    _$IssueListImpl(
      categoryType: json['categoryType'] as String?,
      name: json['name'] as String?,
      level: (json['level'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
      issueCode: json['issueCode'] as String?,
      issueName: json['issueName'] as String?,
      description: json['description'] as String?,
      issueList: (json['issueList'] as List<dynamic>?)
          ?.map((e) => IssueList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IssueListImplToJson(_$IssueListImpl instance) =>
    <String, dynamic>{
      'categoryType': instance.categoryType,
      'name': instance.name,
      'level': instance.level,
      'displayName': instance.displayName,
      'issueCode': instance.issueCode,
      'issueName': instance.issueName,
      'description': instance.description,
      'issueList': instance.issueList,
    };
