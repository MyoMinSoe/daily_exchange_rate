import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utility/custom_btn_navigator/routes.dart';
import 'utility/theme_data/app_theme.dart';
import 'utility/theme_data/theme_provider.dart';
import 'view/screen/home_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        routerConfig: routes,
        title: 'Daily Exchange Rate',
        themeMode: themeMode,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }

  //without go_router
  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   final themeMode = ref.watch(themeProvider);
  //   return ScreenUtilInit(
  //     designSize: const Size(360, 690),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     builder: (context, child) => MaterialApp(
  //       title: 'Daily Exchange Rate',
  //       themeMode: themeMode,
  //       theme: AppThemes.lightTheme,
  //       darkTheme: AppThemes.darkTheme,
  //       debugShowCheckedModeBanner: false,
  //       home: const HomeScreen(),
  //     ),
  //   );
  // }
}
