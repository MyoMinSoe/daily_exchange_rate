import 'package:daily_exchange_rate/view_model/riverpod_old_rate/old_rate_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../model/old_rate_model.dart';
import '../../view_model/currencies_provider.dart';
import '../../view_model/riverpod_old_rate/date_pick_provider.dart';
import '../../view_model/riverpod_old_rate/old_rate_notifier.dart';
import '../widget/failed_widget.dart';
import '../widget/loading_widget.dart';
import '../widget/old_rate_list_widget.dart';
import '../widget/refresh_textbotton_widget.dart';

// ignore: must_be_immutable
class OldRateScreen extends ConsumerWidget {
  const OldRateScreen({super.key});

  Future<void> _selectDate(BuildContext context, WidgetRef ref) async {
    final searchDate = ref.read(oldRateDateProvider);

    DateTime initialDateTime = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDateTime,
      firstDate: DateTime(2021, 1),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final String formattedDate = DateFormat('dd-MM-yyyy').format(picked);
      if (formattedDate != searchDate) {
        ref.read(oldRateDateProvider.notifier).setDate(formattedDate);
        ref.read(oldRateProvider.notifier).getOldRate(formattedDate);
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final findDate = ref.watch(oldRateDateProvider);
    final oldRateState = ref.watch(oldRateProvider);
    final currenciesAsync = ref.watch(currenciesProvider);
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 5.h),
      width: size.width.w,
      height: size.height.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () => _selectDate(context, ref),
            icon: const Icon(Icons.calendar_today),
            label: Text(
              'သိလိုသောနေ့ရက်ရွေးချယ်ပါ',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
          ),

          if (findDate != null)
            Expanded(
              child: switch (oldRateState) {
                OldRateInitial() => const SizedBox(),
                OldRateLoading() => const LoadingWidget(),
                OldRateSuccess(oldRateModel: OldRateModel oldrate) =>
                  currenciesAsync.when(
                    data: (currencies) => OldRateListWidget(
                      currencies: currencies,
                      oldRateModel: oldrate,
                      findDate: findDate,
                    ),
                    error: (error, _) => Text('Failed Currency'),
                    loading: () => const LoadingWidget(),
                  ),
                OldRateFail(errorMsg: String error) => FailedWidget(
                  message: error,
                  onRetry: () =>
                      ref.read(oldRateProvider.notifier).getOldRate(findDate),
                ),
              },
            ),
          if (findDate != null)
            refreshTextBotton(
              onPress: () {
                ref.read(oldRateProvider.notifier).getOldRate(findDate);
                ref.invalidate(currenciesProvider);
              },
              text: 'နှုန်းထားများပြန်လည်ရယူရန်',
            ),
        ],
      ),
    );
  }
}
