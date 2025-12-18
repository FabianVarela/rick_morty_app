import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_notifier.g.dart';

enum ThemeModeType { light, dark }

@riverpod
class ThemeCurrentMode extends _$ThemeCurrentMode {
  @override
  ThemeModeType build() => ThemeModeType.light;

  void toggleTheme() {
    state = state == .light ? .dark : .light;
  }

  Future<void> changeTheme({required ThemeModeType mode}) async {
    state = mode;
  }
}
