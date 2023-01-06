// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_list_repository.dart';

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

String _$rickMortyListRepoHash() => r'ed79cc86a3ae395007ebe17f3653f58f68ef23d5';

/// See also [rickMortyListRepo].
final rickMortyListRepoProvider = AutoDisposeProvider<RickMortyListRepository>(
  rickMortyListRepo,
  name: r'rickMortyListRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$rickMortyListRepoHash,
);
typedef RickMortyListRepoRef = AutoDisposeProviderRef<RickMortyListRepository>;
String _$fetchListDataHash() => r'7944673e1d2fe7e8868717673957cd9733492844';

/// See also [fetchListData].
class FetchListDataProvider
    extends AutoDisposeFutureProvider<RickMortyListData> {
  FetchListDataProvider({
    this.page = 1,
    this.filter,
  }) : super(
          (ref) => fetchListData(
            ref,
            page: page,
            filter: filter,
          ),
          from: fetchListDataProvider,
          name: r'fetchListDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchListDataHash,
        );

  final int page;
  final Map<String, String>? filter;

  @override
  bool operator ==(Object other) {
    return other is FetchListDataProvider &&
        other.page == page &&
        other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef FetchListDataRef = AutoDisposeFutureProviderRef<RickMortyListData>;

/// See also [fetchListData].
final fetchListDataProvider = FetchListDataFamily();

class FetchListDataFamily extends Family<AsyncValue<RickMortyListData>> {
  FetchListDataFamily();

  FetchListDataProvider call({
    int page = 1,
    Map<String, String>? filter,
  }) {
    return FetchListDataProvider(
      page: page,
      filter: filter,
    );
  }

  @override
  AutoDisposeFutureProvider<RickMortyListData> getProviderOverride(
    covariant FetchListDataProvider provider,
  ) {
    return call(
      page: provider.page,
      filter: provider.filter,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchListDataProvider';
}
