import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';
@freezed
class StationModel with _$StationModel {
  factory StationModel(
      {required String id,
      required String org,
      required String orgKey,
      required int depth,
      required String refKey,
      String ? description,
      required String docType,
      required String name,
      required String rel,
      required String displayName}) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) => _$StationModelFromJson(json);
}
