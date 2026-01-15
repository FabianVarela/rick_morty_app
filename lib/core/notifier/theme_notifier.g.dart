// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ThemeCurrentMode)
final themeCurrentModeProvider = ThemeCurrentModeProvider._();

final class ThemeCurrentModeProvider
    extends $NotifierProvider<ThemeCurrentMode, ThemeModeType> {
  ThemeCurrentModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeCurrentModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeCurrentModeHash();

  @$internal
  @override
  ThemeCurrentMode create() => ThemeCurrentMode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeModeType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeModeType>(value),
    );
  }
}

String _$themeCurrentModeHash() => r'476325e0b95d2d437f38c9d192260cb08f0c60df';

abstract class _$ThemeCurrentMode extends $Notifier<ThemeModeType> {
  ThemeModeType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeModeType, ThemeModeType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeModeType, ThemeModeType>,
              ThemeModeType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
