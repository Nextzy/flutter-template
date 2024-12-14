// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoteAuthenticationResponseImpl _$$RemoteAuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoteAuthenticationResponseImpl(
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$RemoteAuthenticationResponseImplToJson(
        _$RemoteAuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
