import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model.dart';
import '../../model/latest_rate_model.dart';
import '../../utility/extension/extensions.dart';
import 'rate_curency_card.dart';

class LatestRateWidget extends StatelessWidget {
  final LatestRateModel latestRates;
  final CurrenciesModel? currencies;
  const LatestRateWidget({
    super.key,
    required this.latestRates,
    required this.currencies,
  });

  @override
  Widget build(BuildContext context) {
    var dateTime = latestRates.timestamp!.dateTimeToLocal();

    return ListView(
      children: [
        Text(
          latestRates.info ?? 'No data available',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: context.theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          latestRates.description ?? 'No data available',
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
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.uSD} - USD',
          rate: '${latestRates.rates?.uSD?.toMMNumber()} ကျပ်',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.eUR} - EUR',
          rate: '${latestRates.rates?.eUR?.toMMNumber()} ကျပ်',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.jPY} - JPY',
          rate: '${latestRates.rates?.jPY?.toMMNumber()} ကျပ်',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.tHB} - THB',
          rate: '${latestRates.rates?.tHB?.toMMNumber()} ကျပ်',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.sGD} - SGD',
          rate: '${latestRates.rates?.sGD?.toMMNumber()} ကျပ်',
        ),
      ],
    );
  }
}
