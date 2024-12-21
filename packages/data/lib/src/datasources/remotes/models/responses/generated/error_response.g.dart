// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseResponseImpl _$$ErrorResponseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseResponseImpl(
      type: json['type'] as String?,
      message: json['message'] as String?,
      developerMessage: json['developerMessage'] as String?,
    );

Map<String, dynamic> _$$ErrorResponseResponseImplToJson(
        _$ErrorResponseResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'developerMessage': instance.developerMessage,
    };
