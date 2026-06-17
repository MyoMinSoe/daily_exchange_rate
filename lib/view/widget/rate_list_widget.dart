import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model/currencies_model.dart';
import '../../model/latest_rate_model/latest_rate_model.dart';
import '../../utility/extension/extensions.dart';
import 'rate_curency_card.dart';

class RateListWidget extends StatelessWidget {
  final LatestRateModel latestRates;
  final CurrenciesModel currencies;
  const RateListWidget({
    super.key,
    required this.latestRates,
    required this.currencies,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, String> rates = latestRates.rates;
    final List<String> sortCodes = rates.keys.toList()..sort();
    final Map<String, String> currencyNames = currencies.currencies;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'နောက်ဆုံးရရှိထားသောနှုန်းထားများ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            height: 2.h,
          ),
        ),
        10.h.sizedboxHeight,
        Expanded(
          child: ListView.builder(
            itemCount: sortCodes.length,
            itemBuilder: (BuildContext context, int index) {
              final String code = sortCodes[index];
              return RateCurencyCard(
                currency: currencyNames.containsKey(code)
                    ? '${currencyNames[code]} - $code'
                    : code,
                rate: '${(rates[code] ?? '').toMMNumber()} ကျပ်',
              );
            },
          ),
        ),
      ],
    );
  }
}
