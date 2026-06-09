import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.deepPurple,
      secondary: Color.fromARGB(255, 164, 107, 226),
      surface: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.black,
    ),

    cardTheme: CardThemeData(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0).w,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurpleAccent,
      secondary: Colors.deepPurple,
      surface: Color.fromARGB(255, 22, 22, 22),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 54, 26, 93),
      foregroundColor: Colors.white,
    ),

    cardTheme: CardThemeData(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0).w,
      ),
    ),
  );
}
