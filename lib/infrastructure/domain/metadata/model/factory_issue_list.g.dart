// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factory_issue_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FactoryIssueListImpl _$$FactoryIssueListImplFromJson(
        Map<String, dynamic> json) =>
    _$FactoryIssueListImpl(
      id: json['id'] as String,
      listType: json['listType'] as String?,
      displayName: json['displayName'] as String?,
      factoryId: json['factoryId'] as String?,
      module: json['module'] as String?,
      department: json['department'] as String?,
      departmentId: json['departmentId'] as String?,
      imageSrc: json['imageSrc'] as String?,
      color: json['color'] as String?,
      issueList: (json['issueList'] as List<dynamic>?)
          ?.map((e) => SubIssueList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FactoryIssueListImplToJson(
        _$FactoryIssueListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listType': instance.listType,
      'displayName': instance.displayName,
      'factoryId': instance.factoryId,
      'module': instance.module,
      'department': instance.department,
      'departmentId': instance.departmentId,
      'imageSrc': instance.imageSrc,
      'color': instance.color,
      'issueList': instance.issueList,
    };

_$SubIssueListImpl _$$SubIssueListImplFromJson(Map<String, dynamic> json) =>
    _$SubIssueListImpl(
      categoryType: json['categoryType'] as String,
      name: json['name'] as String?,
      color: json['color'] as String?,
      level: (json['level'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
      issueCode: json['issueCode'] as String?,
      issueName: json['issueName'] as String?,
      description: json['description'] as String?,
      department: json['department'] as String?,
      departmentId: json['departmentId'] as String?,
      imageSrc: json['imageSrc'] as String?,
      issueList: (json['issueList'] as List<dynamic>?)
          ?.map((e) => SubIssueList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubIssueListImplToJson(_$SubIssueListImpl instance) =>
    <String, dynamic>{
      'categoryType': instance.categoryType,
      'name': instance.name,
      'color': instance.color,
      'level': instance.level,
      'displayName': instance.displayName,
      'issueCode': instance.issueCode,
      'issueName': instance.issueName,
      'description': instance.description,
      'department': instance.department,
      'departmentId': instance.departmentId,
      'imageSrc': instance.imageSrc,
      'issueList': instance.issueList,
    };
