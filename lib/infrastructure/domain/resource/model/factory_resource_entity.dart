import 'package:freezed_annotation/freezed_annotation.dart';

part 'factory_resource_entity.freezed.dart';

part 'factory_resource_entity.g.dart';

@freezed
class FactoryResourceEntity with _$FactoryResourceEntity {
  factory FactoryResourceEntity(
      {String? id,
        String? listType,
        String? orgKey,
        List<ResourceEntity> ? resources
      }) = _FactoryResourceEntity;

  factory FactoryResourceEntity.fromJson(Map<String, dynamic> json) =>
      _$FactoryResourceEntityFromJson(json);
}

@freezed
class ResourceEntity with _$ResourceEntity {
  factory ResourceEntity(
      {String? resourceName,
      String? resourceCode,
      String? description,
      String? note,
      String? location,
      String? orgKey,
      int? createAt,
      bool? available}) = _ResourceEntity;

  factory ResourceEntity.fromJson(Map<String, dynamic> json) =>
      _$ResourceEntityFromJson(json);
}
