// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../d4_response_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExampleRemoteAuthenticationResponseImpl
    _$$ExampleRemoteAuthenticationResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$ExampleRemoteAuthenticationResponseImpl(
          token: json['token'] as String?,
          refreshToken: json['refreshToken'] as String?,
        );

Map<String, dynamic> _$$ExampleRemoteAuthenticationResponseImplToJson(
        _$ExampleRemoteAuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

_$ExampleRemoteMovieListResponseImpl
    _$$ExampleRemoteMovieListResponseImplFromJson(Map<String, dynamic> json) =>
        _$ExampleRemoteMovieListResponseImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => ExampleRemoteMovie.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ExampleRemoteMovieListResponseImplToJson(
        _$ExampleRemoteMovieListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ExampleRemoteMovieImpl _$$ExampleRemoteMovieImplFromJson(
        Map<String, dynamic> json) =>
    _$ExampleRemoteMovieImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ExampleRemoteMovieImplToJson(
        _$ExampleRemoteMovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
