import 'package:project_lecture_demo_app/domain/coupon.dart';
import 'package:project_lecture_demo_app/repository/coupon_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CouponRepositoryImpl implements CouponRepository {
  final client = Supabase.instance.client;
  @override
  Future<List<Coupon>> getCoupons() async {
    return await client
        .from("coupons")
        .select()
        .eq("user_id", client.auth.currentUser!.id)
        .then((value) {
      return value.map((e) => Coupon.fromJson(e)).toList();
    });
  }

  @override
  Future<Coupon> getCoupon(String id) async {
    return await client
        .from("coupons")
        .select()
        .eq("user_id", client.auth.currentUser!.id)
        .eq("id", id)
        .then((value) {
      return Coupon.fromJson(value.first);
    });
  }
}
