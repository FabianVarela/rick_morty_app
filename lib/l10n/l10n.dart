import 'package:flutter/widgets.dart';
import 'package:rick_morty_app/l10n/generated/app_localizations.dart';

export 'package:rick_morty_app/l10n/generated/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
