// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      success: json['success'] as bool?,
      statusCode: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      errors: json['errors'],
    );
