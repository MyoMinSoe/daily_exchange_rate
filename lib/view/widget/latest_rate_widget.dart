import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../model/currencies_model.dart';
import '../../model/latest_rate_model.dart';
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
    var dateTime = DateTime.fromMillisecondsSinceEpoch(
      int.parse(latestRates.timestamp ?? '0') * 1000,
    ).toLocal();

    var time = DateFormat('MMMM d, yyyy - hh:mm a').format(dateTime);

    return ListView(
      children: [
        Text(
          latestRates.info ?? 'No data available',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          latestRates.description ?? 'No data available',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        SizedBox(height: 16.h),
        Text(
          'နောက်ဆုံးရရှိထားသောအချိန်\n$time',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            height: 2.h,
          ),
        ),
        SizedBox(height: 10.h),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.uSD} - USD',
          rate: '${latestRates.rates?.uSD} Ks',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.eUR} - EUR',
          rate: '${latestRates.rates?.eUR} Ks',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.jPY} - JPY',
          rate: '${latestRates.rates?.jPY} Ks',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.tHB} - THB',
          rate: '${latestRates.rates?.tHB} Ks',
        ),
        RateCurencyCard(
          currency: currencies?.currencies == null
              ? 'N/A'
              : '${currencies?.currencies?.sGD} - SGD',
          rate: '${latestRates.rates?.sGD} Ks',
        ),
      ],
    );
  }
}
