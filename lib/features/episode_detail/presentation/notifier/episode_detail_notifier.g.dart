// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RickMortyEpisodeDetail)
const rickMortyEpisodeDetailProvider = RickMortyEpisodeDetailFamily._();

final class RickMortyEpisodeDetailProvider
    extends
        $AsyncNotifierProvider<
          RickMortyEpisodeDetail,
          RickMortyEpisodeDetailResult
        > {
  const RickMortyEpisodeDetailProvider._({
    required RickMortyEpisodeDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'rickMortyEpisodeDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rickMortyEpisodeDetailHash();

  @override
  String toString() {
    return r'rickMortyEpisodeDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RickMortyEpisodeDetail create() => RickMortyEpisodeDetail();

  @override
  bool operator ==(Object other) {
    return other is RickMortyEpisodeDetailProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rickMortyEpisodeDetailHash() =>
    r'cc3a7fa7963f7d45f3a383301695daacf576f1d6';

final class RickMortyEpisodeDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          RickMortyEpisodeDetail,
          AsyncValue<RickMortyEpisodeDetailResult>,
          RickMortyEpisodeDetailResult,
          FutureOr<RickMortyEpisodeDetailResult>,
          int
        > {
  const RickMortyEpisodeDetailFamily._()
    : super(
        retry: null,
        name: r'rickMortyEpisodeDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RickMortyEpisodeDetailProvider call(int id) =>
      RickMortyEpisodeDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'rickMortyEpisodeDetailProvider';
}

abstract class _$RickMortyEpisodeDetail
    extends $AsyncNotifier<RickMortyEpisodeDetailResult> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FutureOr<RickMortyEpisodeDetailResult> build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RickMortyEpisodeDetailResult>,
              RickMortyEpisodeDetailResult
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RickMortyEpisodeDetailResult>,
                RickMortyEpisodeDetailResult
              >,
              AsyncValue<RickMortyEpisodeDetailResult>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
