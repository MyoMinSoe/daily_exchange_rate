import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String dateToString() => DateFormat('dd-MM-yyyy').format(this);
}
