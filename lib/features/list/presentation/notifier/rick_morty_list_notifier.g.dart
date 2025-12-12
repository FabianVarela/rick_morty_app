// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_morty_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RickMortyList)
const rickMortyListProvider = RickMortyListProvider._();

final class RickMortyListProvider
    extends $AsyncNotifierProvider<RickMortyList, RickMortyListData> {
  const RickMortyListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rickMortyListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rickMortyListHash();

  @$internal
  @override
  RickMortyList create() => RickMortyList();
}

String _$rickMortyListHash() => r'ec062ddb928fd4c530a30e714c982cb0caeac617';

abstract class _$RickMortyList extends $AsyncNotifier<RickMortyListData> {
  FutureOr<RickMortyListData> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<RickMortyListData>, RickMortyListData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<RickMortyListData>, RickMortyListData>,
              AsyncValue<RickMortyListData>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
