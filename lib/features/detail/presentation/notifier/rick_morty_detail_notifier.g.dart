// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rickMortyDetailHash() => r'7ef1e5fdc2f2730aa87e5c4bea2596531b1d9677';

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

abstract class _$RickMortyDetail
    extends BuildlessAutoDisposeAsyncNotifier<RickMortyDetailResult> {
  late final int id;

  FutureOr<RickMortyDetailResult> build(
    int id,
  );
}

/// See also [RickMortyDetail].
@ProviderFor(RickMortyDetail)
const rickMortyDetailProvider = RickMortyDetailFamily();

/// See also [RickMortyDetail].
class RickMortyDetailFamily extends Family<AsyncValue<RickMortyDetailResult>> {
  /// See also [RickMortyDetail].
  const RickMortyDetailFamily();

  /// See also [RickMortyDetail].
  RickMortyDetailProvider call(
    int id,
  ) {
    return RickMortyDetailProvider(
      id,
    );
  }

  @override
  RickMortyDetailProvider getProviderOverride(
    covariant RickMortyDetailProvider provider,
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
  String? get name => r'rickMortyDetailProvider';
}

/// See also [RickMortyDetail].
class RickMortyDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RickMortyDetail, RickMortyDetailResult> {
  /// See also [RickMortyDetail].
  RickMortyDetailProvider(
    this.id,
  ) : super.internal(
          () => RickMortyDetail()..id = id,
          from: rickMortyDetailProvider,
          name: r'rickMortyDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rickMortyDetailHash,
          dependencies: RickMortyDetailFamily._dependencies,
          allTransitiveDependencies:
              RickMortyDetailFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is RickMortyDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<RickMortyDetailResult> runNotifierBuild(
    covariant RickMortyDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
