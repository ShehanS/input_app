import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorResponse with _$ErrorResponse{
  factory ErrorResponse({
  required List<Error> errors
}) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);

}

@freezed
class Error with _$Error{
  factory Error({
    required String message
}) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}