import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utility/theme_data/theme_provider.dart';
import 'old_rate_screen.dart';
import 'others_screen.dart';
import 'popular_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _BottomHomeState();
}

class _BottomHomeState extends ConsumerState<HomeScreen> {
  int index = 0;
  List<Widget> screens = [PopularScreen(), OthersScreen(), OldRateScreen()];

  @override
  Widget build(BuildContext context) {
    final ThemeMode themeMode = ref.watch(themeProvider);
    final isDarkMode = themeMode == ThemeMode.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Exchange Rate',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) {
          setState(() {
            index = newIndex;
          });
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
