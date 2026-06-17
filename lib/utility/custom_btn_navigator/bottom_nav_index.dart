import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavIndexProvider = NotifierProvider<BottomNavIndex, int>(
  () => BottomNavIndex(),
);

class BottomNavIndex extends Notifier<int> {
  @override
  int build() => 0;

  void setIndex(int newIndex) {
    state = newIndex;
  }
}
