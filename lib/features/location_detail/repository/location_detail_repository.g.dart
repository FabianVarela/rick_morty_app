// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(rickMortyLocationDetailRepo)
final rickMortyLocationDetailRepoProvider =
    RickMortyLocationDetailRepoProvider._();

final class RickMortyLocationDetailRepoProvider
    extends
        $FunctionalProvider<
          RickMortyLocationDetailRepository,
          RickMortyLocationDetailRepository,
          RickMortyLocationDetailRepository
        >
    with $Provider<RickMortyLocationDetailRepository> {
  RickMortyLocationDetailRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyLocationDetailRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyLocationDetailRepoHash();

  @$internal
  @override
  $ProviderElement<RickMortyLocationDetailRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RickMortyLocationDetailRepository create(Ref ref) {
    return rickMortyLocationDetailRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RickMortyLocationDetailRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RickMortyLocationDetailRepository>(
        value,
      ),
    );
  }
}

String _$rickMortyLocationDetailRepoHash() =>
    r'8f562d900a58748a134d98b00fdd55de18f1fb8b';
