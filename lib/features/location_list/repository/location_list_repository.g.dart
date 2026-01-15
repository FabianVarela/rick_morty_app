// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickMortyLocationListRepo)
final rickMortyLocationListRepoProvider = RickMortyLocationListRepoProvider._();

final class RickMortyLocationListRepoProvider
    extends
        $FunctionalProvider<
          RickMortyLocationListRepository,
          RickMortyLocationListRepository,
          RickMortyLocationListRepository
        >
    with $Provider<RickMortyLocationListRepository> {
  RickMortyLocationListRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyLocationListRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyLocationListRepoHash();

  @$internal
  @override
  $ProviderElement<RickMortyLocationListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RickMortyLocationListRepository create(Ref ref) {
    return rickMortyLocationListRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickMortyLocationListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickMortyLocationListRepository>(
        value,
      ),
    );
  }
}

String _$rickMortyLocationListRepoHash() =>
    r'47bb653fd63adb7bbaa1a3e1c1bdf82afe3eb9a6';
