import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model/currencies_model.dart';
import '../../model/old_rate_model/old_rate_model.dart';
import '../../utility/extension/extensions.dart';
import 'rate_curency_card.dart';

class OldRateListWidget extends StatelessWidget {
  final OldRateModel oldRateModel;
  final CurrenciesModel currencies;
  final String findDate;
  const OldRateListWidget({
    super.key,
    required this.currencies,
    required this.oldRateModel,
    required this.findDate,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, String> rates = oldRateModel.rates;
    final List<String> sortCodes = rates.keys.toList()..sort();
    final Map<String, String> currencyNames = currencies.currencies;
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight,
      child: Column(
        children: [
          Text(
            '$findDate ရဲ့ငွေလဲနှုန်းများ',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          8.h.sizedboxHeight,
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
      ),
    );
  }
}
