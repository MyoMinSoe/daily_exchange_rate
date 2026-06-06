import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'utility/theme_data/app_theme.dart';
import 'utility/theme_data/theme_provider.dart';
import 'view/screen/home_screen.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Daily Exchange Rate',
      themeMode: themeMode,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
