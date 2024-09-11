import 'package:freezed_annotation/freezed_annotation.dart';
part 'metadata_model.freezed.dart';
part 'metadata_model.g.dart';

@freezed
@JsonSerializable()
class MetadataModel with _$MetadataModel{
  factory MetadataModel({required String configName, required String module}) =
      _MetadataModel;
}
