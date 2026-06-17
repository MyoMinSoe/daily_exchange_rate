// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'old_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OldRateModel _$OldRateModelFromJson(Map<String, dynamic> json) =>
    _OldRateModel(
      info: json['info'] as String,
      description: json['description'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      rates: Map<String, String>.from(json['rates'] as Map),
    );

Map<String, dynamic> _$OldRateModelToJson(_OldRateModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'description': instance.description,
      'timestamp': instance.timestamp,
      'rates': instance.rates,
    };
