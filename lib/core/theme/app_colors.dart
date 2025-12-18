part of 'app_theme.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.backgroundPrimary,
    required this.backgroundCard,
    required this.backgroundInfoCard,
    required this.borderColor,
    required this.statusAlive,
    required this.statusDead,
    required this.statusUnknown,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.appBarBackground,
  });

  final Color primary;
  final Color backgroundPrimary;
  final Color backgroundCard;
  final Color backgroundInfoCard;
  final Color borderColor;
  final Color statusAlive;
  final Color statusDead;
  final Color statusUnknown;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color appBarBackground;

  static const AppColors dark = AppColors(
    primary: Color(0xFF4EAD7F),
    backgroundPrimary: Color(0xFF0D1B2A),
    backgroundCard: Color(0xFF1E3A2F),
    backgroundInfoCard: Color(0xFF142217),
    borderColor: Color(0xFF2D5A47),
    statusAlive: Color(0xFF4EAD7F),
    statusDead: Color(0xFFD63D2D),
    statusUnknown: Colors.grey,
    textPrimary: Colors.white,
    textSecondary: Colors.white70,
    textTertiary: Colors.white54,
    appBarBackground: Color(0xFF13B9FF),
  );

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primary,
    Color? backgroundPrimary,
    Color? backgroundCard,
    Color? backgroundInfoCard,
    Color? borderColor,
    Color? statusAlive,
    Color? statusDead,
    Color? statusUnknown,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? appBarBackground,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      backgroundCard: backgroundCard ?? this.backgroundCard,
      backgroundInfoCard: backgroundInfoCard ?? this.backgroundInfoCard,
      borderColor: borderColor ?? this.borderColor,
      statusAlive: statusAlive ?? this.statusAlive,
      statusDead: statusDead ?? this.statusDead,
      statusUnknown: statusUnknown ?? this.statusUnknown,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      appBarBackground: appBarBackground ?? this.appBarBackground,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) return this;

    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      backgroundPrimary: Color.lerp(
        backgroundPrimary,
        other.backgroundPrimary,
        t,
      )!,
      backgroundCard: Color.lerp(backgroundCard, other.backgroundCard, t)!,
      backgroundInfoCard: Color.lerp(
        backgroundInfoCard,
        other.backgroundInfoCard,
        t,
      )!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      statusAlive: Color.lerp(statusAlive, other.statusAlive, t)!,
      statusDead: Color.lerp(statusDead, other.statusDead, t)!,
      statusUnknown: Color.lerp(statusUnknown, other.statusUnknown, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      appBarBackground: Color.lerp(
        appBarBackground,
        other.appBarBackground,
        t,
      )!,
    );
  }
}

extension AppColorsExtension on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
