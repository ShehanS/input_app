// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'factory_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FactoryResourceImpl _$$FactoryResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$FactoryResourceImpl(
      id: json['id'] as String?,
      listType: json['listType'] as String?,
      orgKey: json['orgKey'] as String?,
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FactoryResourceImplToJson(
        _$FactoryResourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listType': instance.listType,
      'orgKey': instance.orgKey,
      'resources': instance.resources,
    };

_$ResourceImpl _$$ResourceImplFromJson(Map<String, dynamic> json) =>
    _$ResourceImpl(
      resourceName: json['resourceName'] as String?,
      resourceCode: json['resourceCode'] as String?,
      description: json['description'] as String?,
      note: json['note'] as String?,
      location: json['location'] as String?,
      orgKey: json['orgKey'] as String?,
      createAt: (json['createAt'] as num?)?.toInt(),
      available: json['available'] as bool?,
    );

Map<String, dynamic> _$$ResourceImplToJson(_$ResourceImpl instance) =>
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
