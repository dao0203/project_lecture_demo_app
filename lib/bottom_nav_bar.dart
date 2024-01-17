import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_lecture_demo_app/feature/merchandise/merchandise_history_screen.dart';
import 'package:project_lecture_demo_app/feature/coupon/coupon_screen.dart';

final bottomNavigationBarIndexProvider = StateProvider<int>((ref) => 0);
final pageWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(bottomNavigationBarIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const CouponScreen();
    case 1:
      return const MerchandiseHistoryScreen();
    default:
      return const CouponScreen();
  }
});

class BottomNavBar extends HookConsumerWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavigationBarIndexProvider);
    final pageWidget = ref.watch(pageWidgetProvider);
    return Scaffold(
      body: pageWidget,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '購入履歴',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (value) =>
            ref.watch(bottomNavigationBarIndexProvider.notifier).state = value,
      ),
    );
  }
}
