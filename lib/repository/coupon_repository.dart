import 'package:project_lecture_demo_app/domain/coupon.dart';

abstract interface class CouponRepository {
  Future<List<Coupon>> getCoupons();
}
