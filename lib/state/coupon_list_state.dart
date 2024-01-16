import 'package:project_lecture_demo_app/domain/coupon.dart';
import 'package:project_lecture_demo_app/repository/di/repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coupon_list_state.g.dart';

@riverpod
class CouponListState extends _$CouponListState {
  @override
  Future<List<Coupon>> build() async {
    return await ref.watch(couponRepositoryProvider).getCoupons();
  }
}
