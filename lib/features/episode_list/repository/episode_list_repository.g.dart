// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickMortyEpisodeListRepo)
const rickMortyEpisodeListRepoProvider = RickMortyEpisodeListRepoProvider._();

final class RickMortyEpisodeListRepoProvider
    extends
        $FunctionalProvider<
          RickMortyEpisodeListRepository,
          RickMortyEpisodeListRepository,
          RickMortyEpisodeListRepository
        >
    with $Provider<RickMortyEpisodeListRepository> {
  const RickMortyEpisodeListRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyEpisodeListRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyEpisodeListRepoHash();

  @$internal
  @override
  $ProviderElement<RickMortyEpisodeListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RickMortyEpisodeListRepository create(Ref ref) {
    return rickMortyEpisodeListRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickMortyEpisodeListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickMortyEpisodeListRepository>(
        value,
      ),
    );
  }
}

String _$rickMortyEpisodeListRepoHash() =>
    r'7911e4a10ac8e56d1611b21de2fc6b8ba985afae';
