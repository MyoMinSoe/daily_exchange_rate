import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget refreshTextBotton({required Function() onPress, required String text}) {
  return TextButton(
    style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
    ),
    onPressed: onPress,
    child: Text(text),
  );
}
