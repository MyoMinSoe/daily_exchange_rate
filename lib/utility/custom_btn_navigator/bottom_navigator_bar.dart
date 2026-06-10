import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../theme_data/theme_provider.dart';
import 'destination.dart';

class BottomNavigatorBar extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavigatorBar({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey('BottomNavigatorBar'));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeProvider);
    final isDarkMode = themeMode == ThemeMode.dark;
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
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        // backgroundColor: Theme.of(context).primaryColor.withValues(alpha: 0.5),
        height: 51.h,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations: destinations
            .map(
              (destination) => NavigationDestination(
                icon: Icon(destination.icon),
                label: destination.label,
                selectedIcon: Icon(destination.icon, color: Colors.white),
              ),
            )
            .toList(),
      ),
    );
  }
}
