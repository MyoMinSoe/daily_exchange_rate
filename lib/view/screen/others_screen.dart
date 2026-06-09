import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/currencies_model.dart';
import '../../model/latest_rate_model.dart';
import '../../service/api_service.dart';
import '../../view_model/riverpod_latest_rate/latest_rate_notifier.dart';
import '../../view_model/riverpod_latest_rate/latest_rate_state.dart';
import '../widget/loading_widget.dart';
import '../widget/failed_widget.dart';
import '../widget/rate_list_widget.dart';

class OthersScreen extends ConsumerStatefulWidget {
  const OthersScreen({super.key});

  @override
  ConsumerState<OthersScreen> createState() => _OthersScreenState();
}

class _OthersScreenState extends ConsumerState<OthersScreen> {
  LatestRateNotifier? latestRateNotifier;
  CurrenciesModel? currencies;
  ApiService apiService = ApiService();
  void getCurrencies() async {
    currencies = await apiService.getCurrencies();
  }

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      latestRateNotifier?.getLatestRates();
      getCurrencies();
    });
  }

  @override
  Widget build(BuildContext context) {
    latestRateNotifier = ref.read(latestRateProvider.notifier);
    final latestRateState = ref.watch(latestRateProvider);
    return Scaffold(
      body: switch (latestRateState) {
        LatestRateInitial() => const LoadingWidget(),
        LatestRateLoading() => const LoadingWidget(),
        LatestRateSuccess(latestRates: LatestRateModel latestRates) =>
          RateListWidget(latestRates: latestRates, currencies: currencies),
        LatestRateError(message: String message) => FailedWidget(
          message: message,
          onRetry: () => latestRateNotifier?.getLatestRates(),
        ),
      },
    );
  }
}
