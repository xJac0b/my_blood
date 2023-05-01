import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  // ignore: unnecessary_cast
  AppLocalizations get l10n => AppLocalizations.of(this) as AppLocalizations;
}

extension MediaQueryX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension ThemeColorX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}

extension ThemeTextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
