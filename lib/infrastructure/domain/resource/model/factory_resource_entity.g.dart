// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factory_resource_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FactoryResourceEntityImpl _$$FactoryResourceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$FactoryResourceEntityImpl(
      id: json['id'] as String?,
      listType: json['listType'] as String?,
      orgKey: json['orgKey'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => ResourceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FactoryResourceEntityImplToJson(
        _$FactoryResourceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listType': instance.listType,
      'orgKey': instance.orgKey,
      'resources': instance.resources,
    };

_$ResourceEntityImpl _$$ResourceEntityImplFromJson(Map<String, dynamic> json) =>
    _$ResourceEntityImpl(
      resourceName: json['resourceName'] as String?,
      resourceCode: json['resourceCode'] as String?,
      description: json['description'] as String?,
      note: json['note'] as String?,
      location: json['location'] as String?,
      orgKey: json['orgKey'] as String?,
      createAt: (json['createAt'] as num?)?.toInt(),
      available: json['available'] as bool?,
    );

Map<String, dynamic> _$$ResourceEntityImplToJson(
        _$ResourceEntityImpl instance) =>
    <String, dynamic>{
      'resourceName': instance.resourceName,
      'resourceCode': instance.resourceCode,
      'description': instance.description,
      'note': instance.note,
      'location': instance.location,
      'orgKey': instance.orgKey,
      'createAt': instance.createAt,
      'available': instance.available,
    };
