// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrenciesModel _$CurrenciesModelFromJson(Map<String, dynamic> json) =>
    _CurrenciesModel(
      info: json['info'] as String? ?? '',
      description: json['description'] as String? ?? '',
      currencies:
          (json['currencies'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$CurrenciesModelToJson(_CurrenciesModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'description': instance.description,
      'currencies': instance.currencies,
    };
