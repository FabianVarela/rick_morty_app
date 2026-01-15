// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickMortyListRepo)
final rickMortyListRepoProvider = RickMortyListRepoProvider._();

final class RickMortyListRepoProvider
    extends
        $FunctionalProvider<
          RickMortyListRepository,
          RickMortyListRepository,
          RickMortyListRepository
        >
    with $Provider<RickMortyListRepository> {
  RickMortyListRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyListRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyListRepoHash();

  @$internal
  @override
  $ProviderElement<RickMortyListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RickMortyListRepository create(Ref ref) {
    return rickMortyListRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickMortyListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickMortyListRepository>(value),
    );
  }
}

String _$rickMortyListRepoHash() => r'd3c2828a4b64b34ef13ce591d1b0bcce8596f5f1';
