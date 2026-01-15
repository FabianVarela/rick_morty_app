// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickMortyEpisodeDetailRepo)
final rickMortyEpisodeDetailRepoProvider =
    RickMortyEpisodeDetailRepoProvider._();

final class RickMortyEpisodeDetailRepoProvider
    extends
        $FunctionalProvider<
          RickMortyEpisodeDetailRepository,
          RickMortyEpisodeDetailRepository,
          RickMortyEpisodeDetailRepository
        >
    with $Provider<RickMortyEpisodeDetailRepository> {
  RickMortyEpisodeDetailRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyEpisodeDetailRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyEpisodeDetailRepoHash();

  @$internal
  @override
  $ProviderElement<RickMortyEpisodeDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RickMortyEpisodeDetailRepository create(Ref ref) {
    return rickMortyEpisodeDetailRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickMortyEpisodeDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickMortyEpisodeDetailRepository>(
        value,
      ),
    );
  }
}

String _$rickMortyEpisodeDetailRepoHash() =>
    r'e7e7099d148973b99a9b00fbbd863522d2692d31';
