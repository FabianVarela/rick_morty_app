// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocationList)
final locationListProvider = LocationListFamily._();

final class LocationListProvider
    extends $AsyncNotifierProvider<LocationList, RickMortyLocationListData> {
  LocationListProvider._({
    required LocationListFamily super.from,
    required FilterData<Map<String, String>?> super.argument,
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

String _$locationListHash() => r'4c365f804e5cce1bc62f9240cb1e335ee1448b3d';

final class LocationListFamily extends $Family
    with
        $ClassFamilyOverride<
          LocationList,
          AsyncValue<RickMortyLocationListData>,
          RickMortyLocationListData,
          FutureOr<RickMortyLocationListData>,
          FilterData<Map<String, String>?>
        > {
  LocationListFamily._()
    : super(
        retry: null,
        name: r'locationListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LocationListProvider call(FilterData<Map<String, String>?> data) =>
      LocationListProvider._(argument: data, from: this);

  @override
  String toString() => r'locationListProvider';
}

abstract class _$LocationList
    extends $AsyncNotifier<RickMortyLocationListData> {
  late final _$args = ref.$arg as FilterData<Map<String, String>?>;
  FilterData<Map<String, String>?> get data => _$args;

  FutureOr<RickMortyLocationListData> build(
    FilterData<Map<String, String>?> data,
  );
  @$mustCallSuper
  @override
  void runBuild() {
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
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(LocationFilterQuery)
final locationFilterQueryProvider = LocationFilterQueryProvider._();

final class LocationFilterQueryProvider
    extends $NotifierProvider<LocationFilterQuery, Map<String, String>?> {
  LocationFilterQueryProvider._()
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
  Override overrideWithValue(Map<String, String>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, String>?>(value),
    );
  }
}

String _$locationFilterQueryHash() =>
    r'342f698d117dc3434f9cd39a44d86cc359ba211b';

abstract class _$LocationFilterQuery extends $Notifier<Map<String, String>?> {
  Map<String, String>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Map<String, String>?, Map<String, String>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, String>?, Map<String, String>?>,
              Map<String, String>?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
