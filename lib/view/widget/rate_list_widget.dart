import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model.dart';
import '../../model/latest_rate_model.dart';
import 'rate_curency_card.dart';

class RateListWidget extends StatelessWidget {
  final LatestRateModel latestRates;
  final CurrenciesModel? currencies;
  final Function() getRate;
  const RateListWidget({
    super.key,
    required this.latestRates,
    required this.currencies,
    required this.getRate,
  });

  @override
  Widget build(BuildContext context) {
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
        SizedBox(height: 10.h),
        Expanded(
          child: ListView(
            children: [
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.aUD} - AUD',
                rate: '${latestRates.rates?.aUD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.bDT} - BDT',
                rate: '${latestRates.rates?.bDT} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.bND} - BND',
                rate: '${latestRates.rates?.bND} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.bRL} - BRL',
                rate: '${latestRates.rates?.bRL} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cAD} - CAD',
                rate: '${latestRates.rates?.cAD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cHF} - CHF',
                rate: '${latestRates.rates?.cHF} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cNY} - CNY',
                rate: '${latestRates.rates?.cNY} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cZK} - CZK',
                rate: '${latestRates.rates?.cZK} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.dKK} - DKK',
                rate: '${latestRates.rates?.dKK} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.eGP} - EGP',
                rate: '${latestRates.rates?.eGP} Ks',
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
                    : '${currencies?.currencies?.gBP} - GBP',
                rate: '${latestRates.rates?.gBP} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.hKD} - HKD',
                rate: '${latestRates.rates?.hKD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.iDR} - IDR',
                rate: '${latestRates.rates?.iDR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.iLS} - ILS',
                rate: '${latestRates.rates?.iLS} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.iNR} - INR',
                rate: '${latestRates.rates?.iNR} Ks',
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
                    : '${currencies?.currencies?.kES} - KES',
                rate: '${latestRates.rates?.kES} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.kHR} - KHR',
                rate: '${latestRates.rates?.kHR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.kRW} - KRW',
                rate: '${latestRates.rates?.kRW} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.kWD} - KWD',
                rate: '${latestRates.rates?.kWD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.lAK} - LAK',
                rate: '${latestRates.rates?.lAK} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.lKR} - LKR',
                rate: '${latestRates.rates?.lKR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.mYR} - MYR',
                rate: '${latestRates.rates?.mYR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.nOK} - NOK',
                rate: '${latestRates.rates?.nOK} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.nPR} - NPR',
                rate: '${latestRates.rates?.nPR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.nZD} - NZD',
                rate: '${latestRates.rates?.nZD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.pHP} - PHP',
                rate: '${latestRates.rates?.pHP} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.pKR} - PKR',
                rate: '${latestRates.rates?.pKR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.rSD} - RSD',
                rate: '${latestRates.rates?.rSD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.rUB} - RUB',
                rate: '${latestRates.rates?.rUB} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.sAR} - SAR',
                rate: '${latestRates.rates?.sAR} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.sEK} - SEK',
                rate: '${latestRates.rates?.sEK} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.sGD} - SGD',
                rate: '${latestRates.rates?.sGD} Ks',
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
                    : '${currencies?.currencies?.uSD} - USD',
                rate: '${latestRates.rates?.uSD} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.vND} - VND',
                rate: '${latestRates.rates?.vND} Ks',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.zAR} - ZAR',
                rate: '${latestRates.rates?.zAR} Ks',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
