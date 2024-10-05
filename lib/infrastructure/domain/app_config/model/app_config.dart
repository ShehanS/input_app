import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
class AppConfig with _$AppConfig{
  factory AppConfig({
    required String configName,
    required ClientInfo client,
    required dynamic masterData,
    required dynamic config,

}) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);
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