import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_lecture_demo_app/domain/merchandise.dart';

class MerchandiseItem extends HookConsumerWidget {
  const MerchandiseItem({super.key, required this.merchandise});

  final Merchandise merchandise;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            merchandise.imageUrl != null
                ? Image.asset(
                    merchandise.imageUrl!,
                    width: double.infinity,
                    height: 150.0,
                    fit: BoxFit.cover,
                  )
                : const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                merchandise.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Text(
              merchandise.description,
              style: const TextStyle(fontSize: 14.0),
            ),
            Text(
              '¥${merchandise.price}',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
