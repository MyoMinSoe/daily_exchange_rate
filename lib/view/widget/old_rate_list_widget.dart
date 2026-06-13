import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/currencies_model.dart';
import '../../model/old_rate_model.dart';
import '../../utility/extension/extensions.dart';
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
            child: ListView(
              children: [
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.aUD} - AUD',
                  rate: '${oldRateModel.rates?.aUD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.bDT} - BDT',
                  rate: '${oldRateModel.rates?.bDT?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.bND} - BND',
                  rate: '${oldRateModel.rates?.bND?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.bRL} - BRL',
                  rate: '${oldRateModel.rates?.bRL?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cAD} - CAD',
                  rate: '${oldRateModel.rates?.cAD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cHF} - CHF',
                  rate: '${oldRateModel.rates?.cHF?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cNY} - CNY',
                  rate: '${oldRateModel.rates?.cNY?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.cZK} - CZK',
                  rate: '${oldRateModel.rates?.cZK?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.dKK} - DKK',
                  rate: '${oldRateModel.rates?.dKK?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.eGP} - EGP',
                  rate: '${oldRateModel.rates?.eGP?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.eUR} - EUR',
                  rate: '${oldRateModel.rates?.eUR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.gBP} - GBP',
                  rate: '${oldRateModel.rates?.gBP?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.hKD} - HKD',
                  rate: '${oldRateModel.rates?.hKD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.iDR} - IDR',
                  rate: '${oldRateModel.rates?.iDR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.iLS} - ILS',
                  rate: '${oldRateModel.rates?.iLS?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.iNR} - INR',
                  rate: '${oldRateModel.rates?.iNR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.jPY} - JPY',
                  rate: '${oldRateModel.rates?.jPY?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kES} - KES',
                  rate: '${oldRateModel.rates?.kES?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kHR} - KHR',
                  rate: '${oldRateModel.rates?.kHR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kRW} - KRW',
                  rate: '${oldRateModel.rates?.kRW?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.kWD} - KWD',
                  rate: '${oldRateModel.rates?.kWD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.lAK} - LAK',
                  rate: '${oldRateModel.rates?.lAK?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.lKR} - LKR',
                  rate: '${oldRateModel.rates?.lKR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.mYR} - MYR',
                  rate: '${oldRateModel.rates?.mYR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.nOK} - NOK',
                  rate: '${oldRateModel.rates?.nOK?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.nPR} - NPR',
                  rate: '${oldRateModel.rates?.nPR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.nZD} - NZD',
                  rate: '${oldRateModel.rates?.nZD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.pHP} - PHP',
                  rate: '${oldRateModel.rates?.pHP?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.pKR} - PKR',
                  rate: '${oldRateModel.rates?.pKR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.rSD} - RSD',
                  rate: '${oldRateModel.rates?.rSD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.rUB} - RUB',
                  rate: '${oldRateModel.rates?.rUB?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.sAR} - SAR',
                  rate: '${oldRateModel.rates?.sAR?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.sEK} - SEK',
                  rate: '${oldRateModel.rates?.sEK?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.sGD} - SGD',
                  rate: '${oldRateModel.rates?.sGD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.tHB} - THB',
                  rate: '${oldRateModel.rates?.tHB?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.uSD} - USD',
                  rate: '${oldRateModel.rates?.uSD?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.vND} - VND',
                  rate: '${oldRateModel.rates?.vND?.toMMNumber()} ကျပ်',
                ),
                RateCurencyCard(
                  currency: currencies?.currencies == null
                      ? 'N/A'
                      : '${currencies?.currencies?.zAR} - ZAR',
                  rate: '${oldRateModel.rates?.zAR?.toMMNumber()} ကျပ်',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
