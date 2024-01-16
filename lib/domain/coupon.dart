import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    required String id,
    required String name,
    required String description,
    required String code,
    required int discount,
    required DateTime expiresAt,
    required bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
