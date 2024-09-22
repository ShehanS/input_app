// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationModelImpl _$$StationModelImplFromJson(Map<String, dynamic> json) =>
    _$StationModelImpl(
      id: json['id'] as String,
      org: json['org'] as String,
      orgKey: json['orgKey'] as String,
      depth: (json['depth'] as num).toInt(),
      refKey: json['refKey'] as String,
      description: json['description'] as String?,
      docType: json['docType'] as String,
      name: json['name'] as String,
      rel: json['rel'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$StationModelImplToJson(_$StationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org': instance.org,
      'orgKey': instance.orgKey,
      'depth': instance.depth,
      'refKey': instance.refKey,
      'description': instance.description,
      'docType': instance.docType,
      'name': instance.name,
      'rel': instance.rel,
      'displayName': instance.displayName,
    };
