import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../view/screen/old_rate_screen.dart';
import '../../view/screen/others_screen.dart';
import '../../view/screen/popular_screen.dart';
import 'bottom_navigator_bar.dart';

var _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Navigator State');
var routes = GoRouter(
  navigatorKey: _navigatorKey,
  initialLocation: '/popular',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          BottomNavigatorBar(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'popular',
              path: '/popular',
              builder: (context, state) => PopularScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'others',
              path: '/others',
              builder: (context, state) => OthersScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'old_rate',
              path: '/old_rate',
              builder: (context, state) => OldRateScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
