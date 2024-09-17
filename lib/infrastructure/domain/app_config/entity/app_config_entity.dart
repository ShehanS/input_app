import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_config_entity.freezed.dart';
part 'app_config_entity.g.dart';

@freezed
class AppConfigEntity with _$AppConfigEntity{
  factory AppConfigEntity({
    required String configName,
    required ClientInfo client,
    required dynamic masterData,
    required dynamic config,

}) = _AppConfigEntity;

  factory AppConfigEntity.fromJson(Map<String, dynamic> json) => _$AppConfigEntityFromJson(json);
}


@freezed
class ClientInfo with _$ClientInfo{
  factory ClientInfo({
      required String id,
    required String clientName,
    required String email,
    required String country,
    required String purchaseDate,
    required String imageURL,
    required String licenseId
}) = _ClientInfo;
 factory ClientInfo.fromJson(Map<String, dynamic> json) => _$ClientInfoFromJson(json);
}