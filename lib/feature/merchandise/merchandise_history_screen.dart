import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_lecture_demo_app/feature/merchandise/merchandise_item.dart';
import 'package:project_lecture_demo_app/state/merchandise_list_state.dart';

class MerchandiseHistoryScreen extends HookConsumerWidget {
  const MerchandiseHistoryScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maerchandiseState = ref.watch(merchandiseListStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入履歴'),
      ),
      body: maerchandiseState.when(
        data: (merchandises) {
          return ListView.builder(
            itemCount: merchandises.length,
            itemBuilder: (context, index) {
              final merchandise = merchandises[index];
              final changedMerchandise = merchandise.copyWith(
                imageUrl: 'assets/merchandise/${index + 1}.jpeg',
              );
              return MerchandiseItem(merchandise: changedMerchandise);
            },
          );
        },
        error: (e, s) {
          return const Center(
            child: Text('エラーが発生しました'),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
