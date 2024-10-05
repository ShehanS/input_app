import 'package:freezed_annotation/freezed_annotation.dart';

part 'factory_resource.freezed.dart';

part 'factory_resource.g.dart';

@freezed
class FactoryResource with _$FactoryResource {
  factory FactoryResource(
      {String? id,
        String? listType,
        String? orgKey,
        List<Resource> ? resources
      }) = _FactoryResource;

  factory FactoryResource.fromJson(Map<String, dynamic> json) =>
      _$FactoryResourceFromJson(json);
}

@freezed
class Resource with _$Resource {
  factory Resource(
      {String? resourceName,
      String? resourceCode,
      String? description,
      String? note,
      String? location,
      String? orgKey,
      int? createAt,
      bool? available}) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
}
