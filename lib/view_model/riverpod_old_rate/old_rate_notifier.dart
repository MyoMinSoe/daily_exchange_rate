import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/old_rate_model/old_rate_model.dart';
import '../../service/api_service.dart';
import 'old_rate_state.dart';

class OldRateNotifier extends Notifier<OldRateState> {
  ApiService apiService = ApiService();
  @override
  OldRateState build() {
    return OldRateInitial();
  }

  Future<void> getOldRate(String? searchDate) async {
    state = OldRateLoading();
    try {
      final OldRateModel oldrate = await apiService.getOldRate(searchDate!);
      state = OldRateSuccess(oldRateModel: oldrate);
    } catch (e) {
      state = OldRateFail(errorMsg: 'Failed to get Old rate.');
    }
  }
}

//Provider for OldRateNotifier
var oldRateProvider = NotifierProvider<OldRateNotifier, OldRateState>(
  () => OldRateNotifier(),
);
