import 'package:freezed_annotation/freezed_annotation.dart';
part 'latest_rate_model.freezed.dart';
part 'latest_rate_model.g.dart';

@freezed
abstract class LatestRateModel with _$LatestRateModel {
  const factory LatestRateModel({
    required String info,
    required String description,
    required String timestamp,
    required Map<String, String> rates,
  }) = _LatestRateModel;

  factory LatestRateModel.fromJson(Map<String, dynamic> json) =>
      _$LatestRateModelFromJson(json);
}
