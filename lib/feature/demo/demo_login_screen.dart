import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DemoLoginScreen extends HookConsumerWidget {
  const DemoLoginScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            SupabaseClient client = Supabase.instance.client;
            final env = dotenv.env;
            await client.auth
                .signInWithPassword(
                  email: env['SUPABASE_TEST_EMAIL']!,
                  password: env['SUPABASE_TEST_PASSWORD']!,
                )
                .then((value) => context.go('/coupon'));
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
