import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_lecture_demo_app/feature/coupon/coupon_item.dart';
import 'package:project_lecture_demo_app/state/coupon_list_state.dart';

class CouponScreen extends HookConsumerWidget {
  const CouponScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text('クーポン'),
      ),
      body: ref.watch(couponListStateProvider).when(data: (coupons) {
        return ListView.builder(
          itemCount: coupons.length,
          itemBuilder: (context, index) {
            final coupon = coupons[index];
            return CouponItem(
              coupon: coupon,
              onTap: (id) {
                context.go('/coupon/detail', extra: id);
              },
            );
          },
        );
      }, error: (e, s) {
        return const Center(
          child: Text('エラーが発生しました'),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
