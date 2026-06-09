import 'package:daily_exchange_rate/view_model/riverpod_latest_rate/latest_rate_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model.dart';
import '../../model/latest_rate_model.dart';
import '../../service/api_service.dart';
import '../../view_model/riverpod_latest_rate/latest_rate_notifier.dart';
import '../widget/failed_widget.dart';
import '../widget/latest_rate_widget.dart';
import '../widget/loading_widget.dart';

class PopularScreen extends ConsumerStatefulWidget {
  const PopularScreen({super.key});

  @override
  ConsumerState<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends ConsumerState<PopularScreen> {
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
    final Size size = MediaQuery.of(context).size;
    latestRateNotifier = ref.read(latestRateProvider.notifier);
    final latestRateState = ref.watch(latestRateProvider);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
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
                  LatestRateWidget(
                    latestRates: latestRates,
                    currencies: currencies,
                  ),
                LatestRateError(message: String message) => FailedWidget(
                  message: message,
                  onRetry: () => latestRateNotifier?.getLatestRates(),
                ),
              },
            ),
            SizedBox(height: 10.h),
            TextButton(
              onPressed: () => latestRateNotifier?.getLatestRates(),
              child: const Text('နှုန်းထားအသစ်များကို ပြန်လည်ရယူရန်'),
            ),
          ],
        ),
      ),
    );
  }
}
