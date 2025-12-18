// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocationList)
const locationListProvider = LocationListFamily._();

final class LocationListProvider
    extends $AsyncNotifierProvider<LocationList, RickMortyLocationListData> {
  const LocationListProvider._({
    required LocationListFamily super.from,
    required Map<String, String> super.argument,
  }) : super(
         retry: null,
         name: r'locationListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$locationListHash();

  @override
  String toString() {
    return r'locationListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  LocationList create() => LocationList();

  @override
  bool operator ==(Object other) {
    return other is LocationListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$locationListHash() => r'853d0b00508b169c30a6e236c1b6ddebd4d4a945';

final class LocationListFamily extends $Family
    with
        $ClassFamilyOverride<
          LocationList,
          AsyncValue<RickMortyLocationListData>,
          RickMortyLocationListData,
          FutureOr<RickMortyLocationListData>,
          Map<String, String>
        > {
  const LocationListFamily._()
    : super(
        retry: null,
        name: r'locationListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocationListProvider call(Map<String, String> filter) =>
      LocationListProvider._(argument: filter, from: this);

  @override
  String toString() => r'locationListProvider';
}

abstract class _$LocationList
    extends $AsyncNotifier<RickMortyLocationListData> {
  late final _$args = ref.$arg as Map<String, String>;
  Map<String, String> get filter => _$args;

  FutureOr<RickMortyLocationListData> build(Map<String, String> filter);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<RickMortyLocationListData>,
              RickMortyLocationListData
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<RickMortyLocationListData>,
                RickMortyLocationListData
              >,
              AsyncValue<RickMortyLocationListData>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(LocationFilterQuery)
const locationFilterQueryProvider = LocationFilterQueryProvider._();

final class LocationFilterQueryProvider
    extends $NotifierProvider<LocationFilterQuery, Map<String, String>> {
  const LocationFilterQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationFilterQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationFilterQueryHash();

  @$internal
  @override
  LocationFilterQuery create() => LocationFilterQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, String>>(value),
    );
  }
}

String _$locationFilterQueryHash() =>
    r'f52ce5d6dc8d36715091d849190c9cf3274bcbe2';

abstract class _$LocationFilterQuery extends $Notifier<Map<String, String>> {
  Map<String, String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Map<String, String>, Map<String, String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, String>, Map<String, String>>,
              Map<String, String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
