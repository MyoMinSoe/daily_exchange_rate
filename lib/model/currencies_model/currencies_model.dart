import 'package:freezed_annotation/freezed_annotation.dart';

part 'currencies_model.freezed.dart';
part 'currencies_model.g.dart';

@freezed
abstract class CurrenciesModel with _$CurrenciesModel {
  const factory CurrenciesModel({
    @Default('') String info,
    @Default('') String description,
    @Default({}) Map<String, String> currencies,
  }) = _CurrenciesModel;
  factory CurrenciesModel.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesModelFromJson(json);
}
