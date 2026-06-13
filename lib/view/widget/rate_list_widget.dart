import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model.dart';
import '../../model/latest_rate_model.dart';
import '../../utility/extension/extensions.dart';
import 'rate_curency_card.dart';

class RateListWidget extends StatelessWidget {
  final LatestRateModel latestRates;
  final CurrenciesModel? currencies;
  const RateListWidget({
    super.key,
    required this.latestRates,
    required this.currencies,
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
        10.h.sizedboxHeight,
        Expanded(
          child: ListView(
            children: [
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.aUD} - AUD',
                rate: '${latestRates.rates?.aUD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.bDT} - BDT',
                rate: '${latestRates.rates?.bDT?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.bND} - BND',
                rate: '${latestRates.rates?.bND?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.bRL} - BRL',
                rate: '${latestRates.rates?.bRL?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cAD} - CAD',
                rate: '${latestRates.rates?.cAD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cHF} - CHF',
                rate: '${latestRates.rates?.cHF?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cNY} - CNY',
                rate: '${latestRates.rates?.cNY?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.cZK} - CZK',
                rate: '${latestRates.rates?.cZK?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.dKK} - DKK',
                rate: '${latestRates.rates?.dKK?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.eGP} - EGP',
                rate: '${latestRates.rates?.eGP?.toMMNumber()} ကျပ်',
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
                    : '${currencies?.currencies?.gBP} - GBP',
                rate: '${latestRates.rates?.gBP?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.hKD} - HKD',
                rate: '${latestRates.rates?.hKD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.iDR} - IDR',
                rate: '${latestRates.rates?.iDR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.iLS} - ILS',
                rate: '${latestRates.rates?.iLS?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.iNR} - INR',
                rate: '${latestRates.rates?.iNR?.toMMNumber()} ကျပ်',
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
                    : '${currencies?.currencies?.kES} - KES',
                rate: '${latestRates.rates?.kES?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.kHR} - KHR',
                rate: '${latestRates.rates?.kHR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.kRW} - KRW',
                rate: '${latestRates.rates?.kRW?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.kWD} - KWD',
                rate: '${latestRates.rates?.kWD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.lAK} - LAK',
                rate: '${latestRates.rates?.lAK?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.lKR} - LKR',
                rate: '${latestRates.rates?.lKR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.mYR} - MYR',
                rate: '${latestRates.rates?.mYR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.nOK} - NOK',
                rate: '${latestRates.rates?.nOK?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.nPR} - NPR',
                rate: '${latestRates.rates?.nPR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.nZD} - NZD',
                rate: '${latestRates.rates?.nZD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.pHP} - PHP',
                rate: '${latestRates.rates?.pHP?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.pKR} - PKR',
                rate: '${latestRates.rates?.pKR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.rSD} - RSD',
                rate: '${latestRates.rates?.rSD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.rUB} - RUB',
                rate: '${latestRates.rates?.rUB?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.sAR} - SAR',
                rate: '${latestRates.rates?.sAR?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.sEK} - SEK',
                rate: '${latestRates.rates?.sEK?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.sGD} - SGD',
                rate: '${latestRates.rates?.sGD?.toMMNumber()} ကျပ်',
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
                    : '${currencies?.currencies?.uSD} - USD',
                rate: '${latestRates.rates?.uSD?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.vND} - VND',
                rate: '${latestRates.rates?.vND?.toMMNumber()} ကျပ်',
              ),
              RateCurencyCard(
                currency: currencies?.currencies == null
                    ? 'N/A'
                    : '${currencies?.currencies?.zAR} - ZAR',
                rate: '${latestRates.rates?.zAR?.toMMNumber()} ကျပ်',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
