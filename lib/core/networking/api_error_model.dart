import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final bool? success;
  @JsonKey(name: 'status')
  final int? statusCode;
  final String? message;
  final dynamic errors;

  ApiErrorModel({this.success, this.statusCode, this.message, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
