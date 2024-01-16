import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponScreen extends HookConsumerWidget {
  const CouponScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('クーポン一覧'),
      ),
      body: const Center(
        child: Text('クーポン一覧'),
      ),
    );
  }
}
