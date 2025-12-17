part of 'app_theme.dart';

class AppTextTheme {
  static TextTheme get textTheme {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: .bold,
        color: Colors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: .bold,
        color: Colors.white,
      ),
      displaySmall: TextStyle(
        fontSize: 18,
        fontWeight: .bold,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: .w600,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(fontSize: 16, color: Colors.white70),
      titleLarge: TextStyle(fontSize: 14, fontWeight: .w600),
      titleMedium: TextStyle(fontSize: 14, color: Colors.white70),
      titleSmall: TextStyle(fontSize: 14),
      bodyLarge: TextStyle(
        fontSize: 12,
        fontWeight: .bold,
        letterSpacing: 1.2,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(fontSize: 12, color: Colors.white54),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: .bold,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 10,
        fontWeight: .w600,
        letterSpacing: 1.2,
        color: Colors.white54,
      ),
      labelMedium: TextStyle(
        fontSize: 10,
        fontWeight: .w600,
        color: Colors.white54,
      ),
      labelSmall: TextStyle(fontSize: 10, color: Colors.white54),
    );
  }
}

extension AppTextStylesExtension on BuildContext {
  TextTheme get textStyles => Theme.of(this).textTheme;

  TextStyle get characterTitle => textStyles.displayLarge!;

  TextStyle get sectionTitle => textStyles.displayMedium!;

  TextStyle get cardTitle => textStyles.displaySmall!;

  TextStyle get buttonText => textStyles.headlineMedium!;

  TextStyle get subtitle => textStyles.headlineSmall!;

  TextStyle get episodeTitle => textStyles.titleLarge!;

  TextStyle get secondarySubtitle => textStyles.titleMedium!;

  TextStyle get normalText => textStyles.titleSmall!;

  TextStyle get badge => textStyles.bodyLarge!;

  TextStyle get secondaryInfo => textStyles.bodyMedium!;

  TextStyle get episodeNumber => textStyles.bodySmall!;

  TextStyle get label => textStyles.labelLarge!;

  TextStyle get smallLabel => textStyles.labelMedium!;

  TextStyle get tinyLabel => textStyles.labelSmall!;
}
