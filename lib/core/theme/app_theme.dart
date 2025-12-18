import 'package:flutter/material.dart';

part 'app_colors.dart';

part 'app_text_theme.dart';

class AppTheme {
  static ThemeData get lightTheme =>
      _buildTheme(AppColors.light, Brightness.light);

  static ThemeData get darkTheme =>
      _buildTheme(AppColors.dark, Brightness.dark);

  static ThemeData get theme => darkTheme;

  static ThemeData _buildTheme(AppColors appColors, Brightness brightness) {
    return ThemeData(
      brightness: brightness,
      colorScheme:
          ColorScheme.fromSwatch(
            brightness: brightness,
            accentColor: appColors.primary,
          ).copyWith(
            primary: appColors.primary,
            surface: appColors.backgroundPrimary,
          ),
      scaffoldBackgroundColor: appColors.backgroundPrimary,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: AppTextTheme.textTheme,
      extensions: <ThemeExtension<dynamic>>[appColors],
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
