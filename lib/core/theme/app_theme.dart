import 'package:flutter/material.dart';

part 'app_colors.dart';

part 'app_text_theme.dart';

class AppTheme {
  static ThemeData get theme {
    const appColors = AppColors.dark;

    return ThemeData(
      brightness: .dark,
      colorScheme:
          ColorScheme.fromSwatch(
            brightness: .dark,
            accentColor: appColors.primary,
          ).copyWith(
            primary: appColors.primary,
            surface: appColors.backgroundPrimary,
          ),
      scaffoldBackgroundColor: appColors.backgroundPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.appBarBackground,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: AppTextTheme.textTheme,
      extensions: const <ThemeExtension<dynamic>>[appColors],
      cardTheme: CardThemeData(
        color: appColors.backgroundCard,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: appColors.backgroundCard,
        border: OutlineInputBorder(
          borderRadius: .circular(12),
          borderSide: BorderSide(color: appColors.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(12),
          borderSide: BorderSide(color: appColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(12),
          borderSide: BorderSide(color: appColors.primary, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: appColors.primary,
          padding: const .symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: .circular(12)),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: appColors.primary),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: appColors.primary,
          side: BorderSide(color: appColors.primary),
          shape: RoundedRectangleBorder(borderRadius: .circular(12)),
        ),
      ),
    );
  }
}
