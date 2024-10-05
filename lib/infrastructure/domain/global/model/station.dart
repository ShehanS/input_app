import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';
@freezed
class Station with _$Station {
  factory Station(
      {required String id,
      required String org,
      required String orgKey,
      required int depth,
      required String refKey,
      String ? description,
      required String docType,
      required String name,
      required String rel,
      required String displayName}) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
