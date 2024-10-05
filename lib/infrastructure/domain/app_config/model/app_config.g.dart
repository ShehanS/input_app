// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      configName: json['configName'] as String,
      client: ClientInfo.fromJson(json['client'] as Map<String, dynamic>),
      masterData: json['masterData'],
      config: json['config'],
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'configName': instance.configName,
      'client': instance.client,
      'masterData': instance.masterData,
      'config': instance.config,
    };

_$ClientInfoImpl _$$ClientInfoImplFromJson(Map<String, dynamic> json) =>
    _$ClientInfoImpl(
      id: json['id'] as String,
      clientName: json['clientName'] as String,
      email: json['email'] as String,
      country: json['country'] as String,
      purchaseDate: json['purchaseDate'] as String,
      imageURL: json['imageURL'] as String,
      licenseId: json['licenseId'] as String,
    );

Map<String, dynamic> _$$ClientInfoImplToJson(_$ClientInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientName': instance.clientName,
      'email': instance.email,
      'country': instance.country,
      'purchaseDate': instance.purchaseDate,
      'imageURL': instance.imageURL,
      'licenseId': instance.licenseId,
    };
