// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../movie_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemoteMovieListResponseImpl _$$RemoteMovieListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoteMovieListResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RemoteMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RemoteMovieListResponseImplToJson(
        _$RemoteMovieListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$RemoteMovieImpl _$$RemoteMovieImplFromJson(Map<String, dynamic> json) =>
    _$RemoteMovieImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$RemoteMovieImplToJson(_$RemoteMovieImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
