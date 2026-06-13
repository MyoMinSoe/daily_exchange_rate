import 'package:flutter/material.dart';

extension DoubleExtensions on double {
  // ignore: unnecessary_this
  Widget get sizedboxHeight => SizedBox(height: this.toDouble());
  //new writing style _ remove Unnecessary 'this.' qualifier.
  Widget get sizedboxWidth => SizedBox(width: toDouble());
}
