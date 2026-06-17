import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model/currencies_model.dart';
import '../../model/latest_rate_model/latest_rate_model.dart';
import '../../utility/extension/extensions.dart';
import 'rate_curency_card.dart';

class LatestRateWidget extends StatelessWidget {
  final LatestRateModel latestRates;
  final CurrenciesModel currencies;
  static const _popularCodes = ['USD', 'EUR', 'JPY', 'SGD', 'THB'];
  const LatestRateWidget({
    super.key,
    required this.latestRates,
    required this.currencies,
  });
  @override
  Widget build(BuildContext context) {
    final DateTime dateTime = latestRates.timestamp.dateTimeToLocal();
    final Map<String, String> rates = latestRates.rates;
    final Map<String, String> currencyNames = currencies.currencies;

    return ListView(
      children: [
        Text(
          latestRates.info,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: context.theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          latestRates.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            color: context.theme.colorScheme.secondary,
          ),
        ),
        16.h.sizedboxHeight,
        Text(
          'နောက်ဆုံးရရှိထားသောအချိန်\n${dateTime.dateToString()}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            height: 2.h,
          ),
        ),
        10.h.sizedboxHeight,
        ..._popularCodes.map(
          (code) => RateCurencyCard(
            currency: currencyNames.containsKey(code)
                ? '${currencyNames[code]} - $code'
                : code,
            rate: '${(rates[code] ?? '').toMMNumber()} ကျပ်',
          ),
        ),
      ],
    );
  }
}
