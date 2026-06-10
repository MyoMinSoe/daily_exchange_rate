import 'package:daily_exchange_rate/view_model/riverpod_latest_rate/latest_rate_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/latest_rate_model.dart';
import '../../view_model/currencies_provider.dart';
import '../../view_model/riverpod_latest_rate/latest_rate_notifier.dart';
import '../widget/failed_widget.dart';
import '../widget/latest_rate_widget.dart';
import '../widget/loading_widget.dart';
import '../widget/refresh_textbotton_widget.dart';

class PopularScreen extends ConsumerWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final latestRateState = ref.watch(latestRateProvider);
    final currenciesAsync = ref.watch(currenciesProvider);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 5.h),
        width: size.width.w,
        height: size.height.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: switch (latestRateState) {
                LatestRateInitial() ||
                LatestRateLoading() => const LoadingWidget(),
                LatestRateSuccess(latestRates: LatestRateModel latestRates) =>
                  currenciesAsync.when(
                    data: (currencies) => LatestRateWidget(
                      latestRates: latestRates,
                      currencies: currencies,
                    ),
                    error: (error, _) => Text('Failed Currency'),

                    loading: () => LoadingWidget(),
                  ),
                LatestRateError(message: String message) => FailedWidget(
                  message: message,
                  onRetry: null,
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
