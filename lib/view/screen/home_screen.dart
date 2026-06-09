import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utility/theme_data/theme_provider.dart';
import '../../view_model/bottom_nav_index.dart';
import 'old_rate_screen.dart';
import 'others_screen.dart';
import 'popular_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  Widget _getScreen(int index) => switch (index) {
    0 => const PopularScreen(),
    1 => const OthersScreen(),
    2 => OldRateScreen(),
    _ => const PopularScreen(),
    // int() => PopularScreen(),
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeProvider);
    final isDarkMode = themeMode == ThemeMode.dark;
    final currentIndex = ref.watch(bottomNavIndexProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily Exchange Rate',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              ref.read(themeProvider.notifier).toggleTheme(!isDarkMode);
            },
          ),
        ],
      ),
      body: _getScreen(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int newIndex) {
          ref.read(bottomNavIndexProvider.notifier).setIndex(newIndex);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Popular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'အခြားနိုင်ငံနှုန်း',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'ယခင်နှုန်းများ',
          ),
        ],
      ),
    );
  }
}
