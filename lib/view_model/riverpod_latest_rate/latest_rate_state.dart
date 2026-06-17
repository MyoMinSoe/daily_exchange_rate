import '../../model/latest_rate_model/latest_rate_model.dart';

sealed class LatestRateState {
  const LatestRateState();
}

class LatestRateInitial extends LatestRateState {
  const LatestRateInitial();
}

class LatestRateLoading extends LatestRateState {
  const LatestRateLoading();
}

class LatestRateSuccess extends LatestRateState {
  final LatestRateModel latestRates;

  const LatestRateSuccess({required this.latestRates});
}

class LatestRateError extends LatestRateState {
  final String message;

  const LatestRateError({required this.message});
}
