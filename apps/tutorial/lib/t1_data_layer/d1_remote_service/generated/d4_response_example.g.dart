// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../d4_response_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExampleRemoteAuthenticationResponse
    _$ExampleRemoteAuthenticationResponseFromJson(Map<String, dynamic> json) =>
        _ExampleRemoteAuthenticationResponse(
          token: json['token'] as String?,
          refreshToken: json['refreshToken'] as String?,
        );

Map<String, dynamic> _$ExampleRemoteAuthenticationResponseToJson(
        _ExampleRemoteAuthenticationResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

_ExampleRemoteMovieListResponse _$ExampleRemoteMovieListResponseFromJson(
        Map<String, dynamic> json) =>
    _ExampleRemoteMovieListResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExampleRemoteMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExampleRemoteMovieListResponseToJson(
        _ExampleRemoteMovieListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_ExampleRemoteMovie _$ExampleRemoteMovieFromJson(Map<String, dynamic> json) =>
    _ExampleRemoteMovie(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ExampleRemoteMovieToJson(_ExampleRemoteMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
