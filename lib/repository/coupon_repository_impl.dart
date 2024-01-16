import 'package:project_lecture_demo_app/domain/coupon.dart';
import 'package:project_lecture_demo_app/repository/coupon_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CouponRepositoryImpl implements CouponRepository {
  final client = Supabase.instance.client;
  @override
  Future<List<Coupon>> getCoupons() async {
    return await client.from('coupons').select().then((value) {
      return value.map((e) => Coupon.fromJson(e)).toList();
    });
  }
}
