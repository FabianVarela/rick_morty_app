// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CharacterList)
const characterListProvider = CharacterListFamily._();

final class CharacterListProvider
    extends $AsyncNotifierProvider<CharacterList, RickMortyListData> {
  const CharacterListProvider._({
    required CharacterListFamily super.from,
    required FilterData<Map<String, String>?> super.argument,
  }) : super(
         retry: null,
         name: r'characterListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$characterListHash();

  @override
  String toString() {
    return r'characterListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CharacterList create() => CharacterList();

  @override
  bool operator ==(Object other) {
    return other is CharacterListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$characterListHash() => r'a63e671c1c6ea589e356fc06c50f5c6786f41646';

final class CharacterListFamily extends $Family
    with
        $ClassFamilyOverride<
          CharacterList,
          AsyncValue<RickMortyListData>,
          RickMortyListData,
          FutureOr<RickMortyListData>,
          FilterData<Map<String, String>?>
        > {
  const CharacterListFamily._()
    : super(
        retry: null,
        name: r'characterListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CharacterListProvider call(FilterData<Map<String, String>?> data) =>
      CharacterListProvider._(argument: data, from: this);

  @override
  String toString() => r'characterListProvider';
}

abstract class _$CharacterList extends $AsyncNotifier<RickMortyListData> {
  late final _$args = ref.$arg as FilterData<Map<String, String>?>;
  FilterData<Map<String, String>?> get data => _$args;

  FutureOr<RickMortyListData> build(FilterData<Map<String, String>?> data);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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

@ProviderFor(CharacterFilterQuery)
const characterFilterQueryProvider = CharacterFilterQueryProvider._();

final class CharacterFilterQueryProvider
    extends $NotifierProvider<CharacterFilterQuery, Map<String, String>?> {
  const CharacterFilterQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'characterFilterQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$characterFilterQueryHash();

  @$internal
  @override
  CharacterFilterQuery create() => CharacterFilterQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, String>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, String>?>(value),
    );
  }
}

String _$characterFilterQueryHash() =>
    r'2a2718f79cec0727d52ff102d8b3ae777ad727f3';

abstract class _$CharacterFilterQuery extends $Notifier<Map<String, String>?> {
  Map<String, String>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Map<String, String>?, Map<String, String>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, String>?, Map<String, String>?>,
              Map<String, String>?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
