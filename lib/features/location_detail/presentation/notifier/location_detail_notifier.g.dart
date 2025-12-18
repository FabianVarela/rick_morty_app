// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RickMortyLocationDetail)
const rickMortyLocationDetailProvider = RickMortyLocationDetailFamily._();

final class RickMortyLocationDetailProvider
    extends
        $AsyncNotifierProvider<
          RickMortyLocationDetail,
          RickMortyLocationDetailResult
        > {
  const RickMortyLocationDetailProvider._({
    required RickMortyLocationDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'rickMortyLocationDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rickMortyLocationDetailHash();

  @override
  String toString() {
    return r'rickMortyLocationDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RickMortyLocationDetail create() => RickMortyLocationDetail();

  @override
  bool operator ==(Object other) {
    return other is RickMortyLocationDetailProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rickMortyLocationDetailHash() =>
    r'3ccb2da2e77afb6759bfed522ff86ecb84af8d18';

final class RickMortyLocationDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          RickMortyLocationDetail,
          AsyncValue<RickMortyLocationDetailResult>,
          RickMortyLocationDetailResult,
          FutureOr<RickMortyLocationDetailResult>,
          int
        > {
  const RickMortyLocationDetailFamily._()
    : super(
        retry: null,
        name: r'rickMortyLocationDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RickMortyLocationDetailProvider call(int id) =>
      RickMortyLocationDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'rickMortyLocationDetailProvider';
}

abstract class _$RickMortyLocationDetail
    extends $AsyncNotifier<RickMortyLocationDetailResult> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FutureOr<RickMortyLocationDetailResult> build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RickMortyLocationDetailResult>,
              RickMortyLocationDetailResult
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RickMortyLocationDetailResult>,
                RickMortyLocationDetailResult
              >,
              AsyncValue<RickMortyLocationDetailResult>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
