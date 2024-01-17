import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SplashGate extends StatefulHookConsumerWidget {
  const SplashGate({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashGateState();
}

class _SplashGateState extends ConsumerState<SplashGate> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (!mounted) {
      return;
    }

    final current = Supabase.instance.client.auth.currentUser;
    debugPrint('current: $current');
    if (current != null) {
      context.go('/bottom_nav_bar');
    } else {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
