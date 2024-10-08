import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@JsonSerializable()
class UserModel with _$UserModel {
  factory UserModel({
    required String username,
    required String email,
    required String contact,
  }) = _UserModel;
}
