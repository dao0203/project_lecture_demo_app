import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:project_lecture_demo_app/domain/coupon.dart';

class CouponItem extends HookConsumerWidget {
  CouponItem({super.key, required this.coupon, required this.onTap});
  final Coupon coupon;
  final Function(String) onTap;

  // 1 か 2
  final random = Random().nextInt(2) + 1;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => onTap(coupon.id),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                coupon.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
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
      ),
    );
  }
}
