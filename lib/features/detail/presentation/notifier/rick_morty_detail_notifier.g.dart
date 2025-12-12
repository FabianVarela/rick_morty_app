// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RickMortyDetail)
const rickMortyDetailProvider = RickMortyDetailFamily._();

final class RickMortyDetailProvider
    extends $AsyncNotifierProvider<RickMortyDetail, RickMortyDetailResult> {
  const RickMortyDetailProvider._({
    required RickMortyDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'rickMortyDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rickMortyDetailHash();

  @override
  String toString() {
    return r'rickMortyDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RickMortyDetail create() => RickMortyDetail();

  @override
  bool operator ==(Object other) {
    return other is RickMortyDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rickMortyDetailHash() => r'7ef1e5fdc2f2730aa87e5c4bea2596531b1d9677';

final class RickMortyDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          RickMortyDetail,
          AsyncValue<RickMortyDetailResult>,
          RickMortyDetailResult,
          FutureOr<RickMortyDetailResult>,
          int
        > {
  const RickMortyDetailFamily._()
    : super(
        retry: null,
        name: r'rickMortyDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RickMortyDetailProvider call(int id) =>
      RickMortyDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'rickMortyDetailProvider';
}

abstract class _$RickMortyDetail extends $AsyncNotifier<RickMortyDetailResult> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FutureOr<RickMortyDetailResult> build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<RickMortyDetailResult>, RickMortyDetailResult>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RickMortyDetailResult>,
                RickMortyDetailResult
              >,
              AsyncValue<RickMortyDetailResult>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
