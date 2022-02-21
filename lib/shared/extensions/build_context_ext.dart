import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Height percentage based on screen max height
  double ph(double percentage) => MediaQuery.of(this).size.height * percentage;

  /// Width percentage based on screen max width
  double pw(double percentage) => MediaQuery.of(this).size.width * percentage;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}
