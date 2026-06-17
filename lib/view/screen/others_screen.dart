import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/latest_rate_model/latest_rate_model.dart';
import '../../utility/extension/extensions.dart';
import '../../view_model/currencies_provider.dart';
import '../../view_model/riverpod_latest_rate/latest_rate_notifier.dart';
import '../../view_model/riverpod_latest_rate/latest_rate_state.dart';
import '../widget/loading_widget.dart';
import '../widget/failed_widget.dart';
import '../widget/rate_list_widget.dart';
import '../widget/refresh_textbotton_widget.dart';

class OthersScreen extends ConsumerWidget {
  const OthersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latestRateState = ref.watch(latestRateProvider);
    final currenciesAsync = ref.watch(currenciesProvider);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 5.h),
        width: context.screenWidth,
        height: context.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: switch (latestRateState) {
                LatestRateInitial() ||
                LatestRateLoading() => const LoadingWidget(),
                LatestRateSuccess(latestRates: LatestRateModel latestRates) =>
                  currenciesAsync.when(
                    data: (currencies) => RateListWidget(
                      latestRates: latestRates,
                      currencies: currencies,
                    ),
                    error: (error, _) => Text('Failed Currency'),
                    loading: () => const LoadingWidget(),
                  ),
                LatestRateError(message: String message) => FailedWidget(
                  message: message,
                  onRetry: () =>
                      ref.read(latestRateProvider.notifier).getLatestRates(),
                ),
              },
            ),
            refreshTextBotton(
              onPress: () {
                ref.read(latestRateProvider.notifier).getLatestRates();
                ref.invalidate(currenciesProvider);
              },
              text: 'နှုန်းထားအသစ်များကို ပြန်လည်ရယူရန်',
            ),
          ],
        ),
      ),
    );
  }
}
