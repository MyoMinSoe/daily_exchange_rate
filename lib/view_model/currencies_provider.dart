import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/currencies_model/currencies_model.dart';
import '../service/api_service.dart';

final currenciesProvider = FutureProvider<CurrenciesModel>((ref) async {
  return await ApiService().getCurrencies();
});
