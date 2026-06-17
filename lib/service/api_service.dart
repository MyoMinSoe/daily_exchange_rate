import 'dart:developer';

import 'package:dio/dio.dart';

import '../model/currencies_model/currencies_model.dart';
import '../model/latest_rate_model/latest_rate_model.dart';
import '../model/old_rate_model/old_rate_model.dart';
import 'api_constant.dart';

class ApiService {
  Dio dio = Dio();

  Future<LatestRateModel> getLatestRates() async {
    final response = await dio.get(ApiConstant.latestRates);
    LatestRateModel rates = LatestRateModel.fromJson(response.data);
    return rates;
  }

  Future<CurrenciesModel> getCurrencies() async {
    final response = await dio.get(ApiConstant.currencies);
    CurrenciesModel currencies = CurrenciesModel.fromJson(response.data);
    log('Currencies: $response.data');
    return currencies;
  }

  Future<OldRateModel> getOldRate(String searchDate) async {
    final response = await dio.get('${ApiConstant.oldRate}$searchDate');
    OldRateModel oldrate = OldRateModel.fromJson(response.data);
    log('Old Rate: $oldrate');
    return oldrate;
  }
}
