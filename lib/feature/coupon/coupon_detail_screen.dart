import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:project_lecture_demo_app/state/coupon_state.dart';

class CouponDetailScreen extends HookConsumerWidget {
  const CouponDetailScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text('クーポン詳細'),
      ),
      body: ref.watch(couponStateProvider(id)).when(data: (coupon) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // 仮のバーコードを表示
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset(
                    'assets/tentative_barcode.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 8),
                // Image.network(
                //   coupon.imageUrl,
                //   fit: BoxFit.cover,
                // ),
                // 仮の画像を表示
                Image.asset(
                  'assets/1.jpeg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    coupon.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '割引率: ${coupon.discount}%',
                    style: const TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '提供日: ${DateFormat('yyyy/MM/dd').format(coupon.createdAt)}',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
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
