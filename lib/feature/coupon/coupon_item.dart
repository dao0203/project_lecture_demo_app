import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:project_lecture_demo_app/domain/coupon.dart';

class CouponItem extends HookConsumerWidget {
  const CouponItem({super.key, required this.coupon});
  final Coupon coupon;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              coupon.imageUrl,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              coupon.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '割引率: ${coupon.discount}%',
              style: const TextStyle(fontSize: 16, color: Colors.green),
            ),
            const SizedBox(height: 8),
            Text(
              '作成日: ${DateFormat('yyyy/MM/dd').format(coupon.createdAt)}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}