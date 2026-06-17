// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LatestRateModel _$LatestRateModelFromJson(Map<String, dynamic> json) =>
    _LatestRateModel(
      info: json['info'] as String,
      description: json['description'] as String,
      timestamp: json['timestamp'] as String,
      rates: Map<String, String>.from(json['rates'] as Map),
    );

Map<String, dynamic> _$LatestRateModelToJson(_LatestRateModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'description': instance.description,
      'timestamp': instance.timestamp,
      'rates': instance.rates,
    };
