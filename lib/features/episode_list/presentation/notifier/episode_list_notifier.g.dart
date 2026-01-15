// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EpisodeList)
final episodeListProvider = EpisodeListFamily._();

final class EpisodeListProvider
    extends $AsyncNotifierProvider<EpisodeList, RickMortyEpisodeListData> {
  EpisodeListProvider._({
    required EpisodeListFamily super.from,
    required Map<String, String> super.argument,
  }) : super(
         retry: null,
         name: r'episodeListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$episodeListHash();

  @override
  String toString() {
    return r'episodeListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EpisodeList create() => EpisodeList();

  @override
  bool operator ==(Object other) {
    return other is EpisodeListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$episodeListHash() => r'551a0be706e5a62e2eaa87201f6d424f8773a5be';

final class EpisodeListFamily extends $Family
    with
        $ClassFamilyOverride<
          EpisodeList,
          AsyncValue<RickMortyEpisodeListData>,
          RickMortyEpisodeListData,
          FutureOr<RickMortyEpisodeListData>,
          Map<String, String>
        > {
  EpisodeListFamily._()
    : super(
        retry: null,
        name: r'episodeListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EpisodeListProvider call(Map<String, String> filter) =>
      EpisodeListProvider._(argument: filter, from: this);

  @override
  String toString() => r'episodeListProvider';
}

abstract class _$EpisodeList extends $AsyncNotifier<RickMortyEpisodeListData> {
  late final _$args = ref.$arg as Map<String, String>;
  Map<String, String> get filter => _$args;

  FutureOr<RickMortyEpisodeListData> build(Map<String, String> filter);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RickMortyEpisodeListData>,
              RickMortyEpisodeListData
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RickMortyEpisodeListData>,
                RickMortyEpisodeListData
              >,
              AsyncValue<RickMortyEpisodeListData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(EpisodeFilterQuery)
final episodeFilterQueryProvider = EpisodeFilterQueryProvider._();

final class EpisodeFilterQueryProvider
    extends $NotifierProvider<EpisodeFilterQuery, Map<String, String>> {
  EpisodeFilterQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'episodeFilterQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$episodeFilterQueryHash();

  @$internal
  @override
  EpisodeFilterQuery create() => EpisodeFilterQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, String>>(value),
    );
  }
}

String _$episodeFilterQueryHash() =>
    r'349edc918c098f43fdaedbd7a2f986faae293816';

abstract class _$EpisodeFilterQuery extends $Notifier<Map<String, String>> {
  Map<String, String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<String, String>, Map<String, String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, String>, Map<String, String>>,
              Map<String, String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
