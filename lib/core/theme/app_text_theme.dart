part of 'app_theme.dart';

class AppTextTheme {
  static TextTheme get textTheme {
    return const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: .bold),
      displayMedium: TextStyle(fontSize: 24, fontWeight: .bold),
      displaySmall: TextStyle(fontSize: 18, fontWeight: .bold),
      headlineMedium: TextStyle(fontSize: 16, fontWeight: .w600),
      headlineSmall: TextStyle(fontSize: 16),
      titleLarge: TextStyle(fontSize: 14, fontWeight: .w600),
      titleMedium: TextStyle(fontSize: 14),
      titleSmall: TextStyle(fontSize: 14),
      bodyLarge: TextStyle(
        fontSize: 12,
        fontWeight: .bold,
        letterSpacing: 1.2,
      ),
      bodyMedium: TextStyle(fontSize: 12),
      bodySmall: TextStyle(fontSize: 12, fontWeight: .bold),
      labelLarge: TextStyle(
        fontSize: 10,
        fontWeight: .w600,
        letterSpacing: 1.2,
      ),
      labelMedium: TextStyle(fontSize: 10, fontWeight: .w600),
      labelSmall: TextStyle(fontSize: 10),
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
