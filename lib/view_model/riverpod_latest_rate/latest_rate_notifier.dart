import '../../model/latest_rate_model/latest_rate_model.dart';
import '../../service/api_service.dart';
import 'latest_rate_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LatestRateNotifier extends Notifier<LatestRateState> {
  ApiService apiService = ApiService();
  @override
  LatestRateState build() {
    getLatestRates();
    return const LatestRateInitial();
  }

  Future<void> getLatestRates() async {
    state = const LatestRateLoading();
    try {
      final LatestRateModel latestRates = await apiService.getLatestRates();
      state = LatestRateSuccess(latestRates: latestRates);
    } catch (e) {
      state = LatestRateError(message: 'Failed to get latest rates');
    }
  }
}

// Provider for LatestRateNotifier
var latestRateProvider =
    NotifierProvider.autoDispose<LatestRateNotifier, LatestRateState>(
      () => LatestRateNotifier(),
    );
