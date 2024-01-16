import 'package:project_lecture_demo_app/domain/coupon.dart';
import 'package:project_lecture_demo_app/repository/di/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coupon_state.g.dart';

@riverpod
class CouponState extends _$CouponState {
  @override
  Future<Coupon> build(String id) {
    return ref.watch(couponRepositoryProvider).getCoupon(id);
  }
}
