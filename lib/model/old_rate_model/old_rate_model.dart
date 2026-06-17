import 'package:freezed_annotation/freezed_annotation.dart';
part 'old_rate_model.freezed.dart';
part 'old_rate_model.g.dart';

@freezed
abstract class OldRateModel with _$OldRateModel {
  const factory OldRateModel({
    required String info,
    required String description,
    required int timestamp,
    required Map<String, String> rates,
  }) = _OldRateModel;

  factory OldRateModel.fromJson(Map<String, dynamic> json) =>
      _$OldRateModelFromJson(json);
}
