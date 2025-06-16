import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  bool? success;
  @JsonKey(name: 'status')
  int? statusCode;
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;

  LoginResponse({this.message, this.statusCode, this.success, this.userData});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;

  UserData({this.token});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
