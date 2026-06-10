import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model.dart';
import '../../model/old_rate_model.dart';
import 'rate_curency_card.dart';

class OldRateListWidget extends StatelessWidget {
  final OldRateModel oldRateModel;
  final CurrenciesModel? currencies;
  final String findDate;
  const OldRateListWidget({
    super.key,
    required this.currencies,
    required this.oldRateModel,
    required this.findDate,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width.w,
      height: size.height.h,
      child: Column(
        children: [
          Text(
            '$findDate ရဲ့ငွေလဲနှုန်းများ',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: ListView(
              children: [
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.aUD} - AUD',
                  rate: '${oldRateModel.rates?.aUD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.bDT} - BDT',
                  rate: '${oldRateModel.rates?.bDT} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.bND} - BND',
                  rate: '${oldRateModel.rates?.bND} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.bRL} - BRL',
                  rate: '${oldRateModel.rates?.bRL} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cAD} - CAD',
                  rate: '${oldRateModel.rates?.cAD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cHF} - CHF',
                  rate: '${oldRateModel.rates?.cHF} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cNY} - CNY',
                  rate: '${oldRateModel.rates?.cNY} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cZK} - CZK',
                  rate: '${oldRateModel.rates?.cZK} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.dKK} - DKK',
                  rate: '${oldRateModel.rates?.dKK} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.eGP} - EGP',
                  rate: '${oldRateModel.rates?.eGP} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.eUR} - EUR',
                  rate: '${oldRateModel.rates?.eUR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.gBP} - GBP',
                  rate: '${oldRateModel.rates?.gBP} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.hKD} - HKD',
                  rate: '${oldRateModel.rates?.hKD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.iDR} - IDR',
                  rate: '${oldRateModel.rates?.iDR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.iLS} - ILS',
                  rate: '${oldRateModel.rates?.iLS} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.iNR} - INR',
                  rate: '${oldRateModel.rates?.iNR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.jPY} - JPY',
                  rate: '${oldRateModel.rates?.jPY} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kES} - KES',
                  rate: '${oldRateModel.rates?.kES} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kHR} - KHR',
                  rate: '${oldRateModel.rates?.kHR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kRW} - KRW',
                  rate: '${oldRateModel.rates?.kRW} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kWD} - KWD',
                  rate: '${oldRateModel.rates?.kWD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.lAK} - LAK',
                  rate: '${oldRateModel.rates?.lAK} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.lKR} - LKR',
                  rate: '${oldRateModel.rates?.lKR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.mYR} - MYR',
                  rate: '${oldRateModel.rates?.mYR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.nOK} - NOK',
                  rate: '${oldRateModel.rates?.nOK} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.nPR} - NPR',
                  rate: '${oldRateModel.rates?.nPR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.nZD} - NZD',
                  rate: '${oldRateModel.rates?.nZD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.pHP} - PHP',
                  rate: '${oldRateModel.rates?.pHP} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.pKR} - PKR',
                  rate: '${oldRateModel.rates?.pKR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.rSD} - RSD',
                  rate: '${oldRateModel.rates?.rSD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.rUB} - RUB',
                  rate: '${oldRateModel.rates?.rUB} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.sAR} - SAR',
                  rate: '${oldRateModel.rates?.sAR} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.sEK} - SEK',
                  rate: '${oldRateModel.rates?.sEK} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.sGD} - SGD',
                  rate: '${oldRateModel.rates?.sGD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.tHB} - THB',
                  rate: '${oldRateModel.rates?.tHB} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.uSD} - USD',
                  rate: '${oldRateModel.rates?.uSD} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.vND} - VND',
                  rate: '${oldRateModel.rates?.vND} Ks',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.zAR} - ZAR',
                  rate: '${oldRateModel.rates?.zAR} Ks',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
