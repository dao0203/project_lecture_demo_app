import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MerchandiseHistoryScreen extends HookConsumerWidget {
  const MerchandiseHistoryScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入履歴'),
      ),
      body: const Center(
        child: Text('履歴'),
      ),
    );
  }
}
