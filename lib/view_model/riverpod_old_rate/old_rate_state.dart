import '../../model/old_rate_model.dart';

sealed class OldRateState {
  const OldRateState();
}

class OldRateInitial extends OldRateState {}

class OldRateLoading extends OldRateState {}

class OldRateSuccess extends OldRateState {
  final OldRateModel oldRateModel;

  OldRateSuccess({required this.oldRateModel});
}

class OldRateFail extends OldRateState {
  final String errorMsg;

  OldRateFail({required this.errorMsg});
}
