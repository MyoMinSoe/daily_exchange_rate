import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  CurrenciesModel? currencies;
  ApiService apiService = ApiService();
  void getCurrencies() async {
    currencies = await apiService.getCurrencies();
  }

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(latestRateProvider.notifier).getLatestRates();
      getCurrencies();
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final latestRateState = ref.watch(latestRateProvider);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0).w,
        width: size.width.w,
        height: size.height.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: switch (latestRateState) {
                LatestRateInitial() => const LoadingWidget(),
                LatestRateLoading() => const LoadingWidget(),
                LatestRateSuccess(latestRates: LatestRateModel latestRates) =>
                  RateListWidget(
                    latestRates: latestRates,
                    currencies: currencies,
                    getRate: () {
                      ref.read(latestRateProvider.notifier).getLatestRates();
                    },
                  ),
                LatestRateError(message: String message) => FailedWidget(
                  message: message,
                  onRetry: () =>
                      ref.read(latestRateProvider.notifier).getLatestRates(),
                ),
              },
            ),
            SizedBox(height: 5.h),
            TextButton(
              onPressed: () =>
                  ref.read(latestRateProvider.notifier).getLatestRates(),
              child: const Text('နှုန်းထားအသစ်များကို ပြန်လည်ရယူရန်'),
            ),
          ],
        ),
      ),
    );
  }
}
