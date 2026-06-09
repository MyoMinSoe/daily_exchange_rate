import 'package:flutter_riverpod/flutter_riverpod.dart';

class DatePickProvider extends Notifier<String?> {
  @override
  String? build() {
    return '';
  }

  void setDate(String date) {
    state = date;
  }
}

final oldRateDateProvider = NotifierProvider<DatePickProvider, String?>(
  () => DatePickProvider(),
);
