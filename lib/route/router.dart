import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_lecture_demo_app/bottom_nav_bar.dart';
import 'package:project_lecture_demo_app/feature/candidate/candidate_history_screen.dart';
import 'package:project_lecture_demo_app/feature/coupon/coupon_detail_screen.dart';
import 'package:project_lecture_demo_app/feature/coupon/coupon_screen.dart';
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
      path: '/bottom_nav_bar',
      pageBuilder: (context, state) {
        return const MaterialPage(child: BottomNavBar());
      },
    ),
    GoRoute(
      path: '/coupon',
      pageBuilder: (context, state) => const MaterialPage(
        child: CouponScreen(),
      ),
      routes: [
        GoRoute(
          path: 'detail',
          pageBuilder: (context, state) {
            final id = state.extra as String;
            return MaterialPage(
              child: CouponDetailScreen(id: id),
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: '/candidate_history',
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: CandidateHistoryScreen(),
        );
      },
    )
  ],
);
