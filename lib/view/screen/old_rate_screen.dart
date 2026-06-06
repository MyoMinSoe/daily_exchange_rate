import 'package:daily_exchange_rate/view_model/riverpod_old_rate/old_rate_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../model/currencies_model.dart';
import '../../model/old_rate_model.dart';
import '../../service/api_service.dart';
import '../../view_model/riverpod_old_rate/old_rate_notifier.dart';
import '../widget/failed_widget.dart';
import '../widget/loading_widget.dart';
import '../widget/old_rate_list_widget.dart';

class OldRateScreen extends ConsumerStatefulWidget {
  const OldRateScreen({super.key});

  @override
  ConsumerState<OldRateScreen> createState() => _OldRateScreenState();
}

class _OldRateScreenState extends ConsumerState<OldRateScreen> {
  DateTime? selectedDate;
  String? findDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2021, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        findDate = DateFormat('dd-MM-yyyy').format(picked);
        getOldRateList();
      });
    }
  }

  OldRateNotifier? oldRateNotifier;
  CurrenciesModel? currencies;
  ApiService apiService = ApiService();
  void getCurrencies() async {
    currencies = await apiService.getCurrencies();
    setState(() {});
  }

  void getOldRateList() {
    getCurrencies();
    oldRateNotifier?.getOldRate(findDate);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    oldRateNotifier = ref.read(oldRateProvider.notifier);
    final oldRateState = ref.watch(oldRateProvider);
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          TextButton.icon(
            onPressed: () => _selectDate(context),
            icon: const Icon(Icons.calendar_today),
            label: Text(
              'သိလိုသောနေ့ရက်ရွေးချယ်ပါ',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),

          if (findDate != null)
            Expanded(
              child: switch (oldRateState) {
                OldRateInitial() => const LoadingWidget(),
                OldRateLoading() => const LoadingWidget(),
                OldRateSuccess(oldRateModel: OldRateModel oldrate) =>
                  OldRateListWidget(
                    currencies: currencies,
                    oldRateModel: oldrate,
                    findDate: findDate!,
                  ),
                OldRateFail(errorMsg: String error) => FailedWidget(
                  message: error,
                  onRetry: () => oldRateNotifier?.getOldRate(findDate),
                ),
              },
            ),
        ],
      ),
    );
  }
}
