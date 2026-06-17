extension StringExtensions on String {
  bool get isValidEmail {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this);
  }

  String toMMNumber() => replaceAll('1', '၁')
      .replaceAll('2', '၂')
      .replaceAll('3', '၃')
      .replaceAll('4', '၄')
      .replaceAll('5', '၅')
      .replaceAll('6', '၆')
      .replaceAll('7', '၇')
      .replaceAll('8', '၈')
      .replaceAll('9', '၉')
      .replaceAll('0', '၀')
      .replaceAll('', '');

  DateTime dateTimeToLocal() {
    return DateTime.fromMillisecondsSinceEpoch(
      int.parse(this) * 1000,
    ).toLocal();
  }
}
