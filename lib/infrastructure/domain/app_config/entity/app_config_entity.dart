import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_config_entity.freezed.dart';
part 'app_config_entity.g.dart';

@freezed
class AppConfigEntity with _$AppConfigEntity{
  factory AppConfigEntity({
    required String configName,
    required ClientInfoEntity client,
    required dynamic masterData,
    required dynamic config,

}) = _AppConfigEntity;

  factory AppConfigEntity.fromJson(Map<String, dynamic> json) => _$AppConfigEntityFromJson(json);
}


@freezed
class ClientInfoEntity with _$ClientInfoEntity{
  factory ClientInfoEntity({
      required String id,
    required String clientName,
    required String email,
    required String country,
    required String purchaseDate,
    required String imageURL,
    required String licenseId
}) = _ClientInfoEntity;
 factory ClientInfoEntity.fromJson(Map<String, dynamic> json) => _$ClientInfoEntityFromJson(json);
}