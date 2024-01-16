// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$couponStateHash() => r'477abcc3d087f21205d511adba836a8210fcad99';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CouponState extends BuildlessAutoDisposeAsyncNotifier<Coupon> {
  late final String id;

  FutureOr<Coupon> build(
    String id,
  );
}

/// See also [CouponState].
@ProviderFor(CouponState)
const couponStateProvider = CouponStateFamily();

/// See also [CouponState].
class CouponStateFamily extends Family<AsyncValue<Coupon>> {
  /// See also [CouponState].
  const CouponStateFamily();

  /// See also [CouponState].
  CouponStateProvider call(
    String id,
  ) {
    return CouponStateProvider(
      id,
    );
  }

  @override
  CouponStateProvider getProviderOverride(
    covariant CouponStateProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'couponStateProvider';
}

/// See also [CouponState].
class CouponStateProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CouponState, Coupon> {
  /// See also [CouponState].
  CouponStateProvider(
    String id,
  ) : this._internal(
          () => CouponState()..id = id,
          from: couponStateProvider,
          name: r'couponStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$couponStateHash,
          dependencies: CouponStateFamily._dependencies,
          allTransitiveDependencies:
              CouponStateFamily._allTransitiveDependencies,
          id: id,
        );

  CouponStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<Coupon> runNotifierBuild(
    covariant CouponState notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CouponState Function() create) {
    return ProviderOverride(
      origin: this,
      override: CouponStateProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CouponState, Coupon> createElement() {
    return _CouponStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CouponStateProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CouponStateRef on AutoDisposeAsyncNotifierProviderRef<Coupon> {
  /// The parameter `id` of this provider.
  String get id;
}

class _CouponStateProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CouponState, Coupon>
    with CouponStateRef {
  _CouponStateProviderElement(super.provider);

  @override
  String get id => (origin as CouponStateProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
