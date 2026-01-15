// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickMortyDetailRepo)
final rickMortyDetailRepoProvider = RickMortyDetailRepoProvider._();

final class RickMortyDetailRepoProvider
    extends
        $FunctionalProvider<
          RickMortyDetailRepository,
          RickMortyDetailRepository,
          RickMortyDetailRepository
        >
    with $Provider<RickMortyDetailRepository> {
  RickMortyDetailRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyDetailRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyDetailRepoHash();

  @$internal
  @override
  $ProviderElement<RickMortyDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RickMortyDetailRepository create(Ref ref) {
    return rickMortyDetailRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickMortyDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickMortyDetailRepository>(value),
    );
  }
}

String _$rickMortyDetailRepoHash() =>
    r'9ae078df5132d1a55eafa98330c6b6bba8e079c0';
