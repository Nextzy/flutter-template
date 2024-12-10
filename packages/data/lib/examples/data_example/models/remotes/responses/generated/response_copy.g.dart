// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response_copy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YourResponseImpl _$$YourResponseImplFromJson(Map<String, dynamic> json) =>
    _$YourResponseImpl(
      data: json['data'] as String,
      dataList:
          (json['dataList'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$YourResponseImplToJson(_$YourResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'dataList': instance.dataList,
    };
