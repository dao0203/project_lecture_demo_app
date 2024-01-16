import 'package:project_lecture_demo_app/repository/coupon_repository.dart';
import 'package:project_lecture_demo_app/repository/coupon_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final couponRepositoryProvider = Provider<CouponRepository>((ref) {
  return CouponRepositoryImpl();
});
