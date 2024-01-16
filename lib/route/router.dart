import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_lecture_demo_app/feature/demo/demo_login_screen.dart';
import 'package:project_lecture_demo_app/splash_gate.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(
        child: SplashGate(),
      ),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => const MaterialPage(
        child: DemoLoginScreen(),
      ),
    ),
    GoRoute(
      path: '/coupon',
      pageBuilder: (context, state) => const MaterialPage(
        child: DemoLoginScreen(),
      ),
    ),
  ],
);
