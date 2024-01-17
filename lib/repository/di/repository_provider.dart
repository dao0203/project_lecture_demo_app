import 'package:project_lecture_demo_app/repository/coupon_repository.dart';
import 'package:project_lecture_demo_app/repository/coupon_repository_impl.dart';
import 'package:project_lecture_demo_app/repository/merchandise_repository.dart';
import 'package:project_lecture_demo_app/repository/merchandise_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final couponRepositoryProvider = Provider<CouponRepository>((ref) {
  return CouponRepositoryImpl();
});

final merchandiseRepositoryProvider = Provider<MerchandiseRepository>((ref) {
  return MerchandiseRepositoryImpl();
});
