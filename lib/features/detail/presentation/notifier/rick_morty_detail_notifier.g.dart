// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$RickMortyDetailHash() => r'7ef1e5fdc2f2730aa87e5c4bea2596531b1d9677';

/// See also [RickMortyDetail].
class RickMortyDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RickMortyDetail, RickMortyDetailResult> {
  RickMortyDetailProvider(
    this.id,
  ) : super(
          () => RickMortyDetail()..id = id,
          from: rickMortyDetailProvider,
          name: r'rickMortyDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$RickMortyDetailHash,
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
    covariant _$RickMortyDetail notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}

typedef RickMortyDetailRef
    = AutoDisposeAsyncNotifierProviderRef<RickMortyDetailResult>;

/// See also [RickMortyDetail].
final rickMortyDetailProvider = RickMortyDetailFamily();

class RickMortyDetailFamily extends Family<AsyncValue<RickMortyDetailResult>> {
  RickMortyDetailFamily();

  RickMortyDetailProvider call(
    int id,
  ) {
    return RickMortyDetailProvider(
      id,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<RickMortyDetail, RickMortyDetailResult>
      getProviderOverride(
    covariant RickMortyDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'rickMortyDetailProvider';
}

abstract class _$RickMortyDetail
    extends BuildlessAutoDisposeAsyncNotifier<RickMortyDetailResult> {
  late final int id;

  FutureOr<RickMortyDetailResult> build(
    int id,
  );
}
