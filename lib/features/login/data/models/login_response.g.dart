// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      message: json['message'] as String?,
      statusCode: (json['status'] as num?)?.toInt(),
      success: json['success'] as bool?,
      userData:
          json['data'] == null
              ? null
              : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.statusCode,
      'message': instance.message,
      'data': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) =>
    UserData(token: json['token'] as String?);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'token': instance.token,
};
