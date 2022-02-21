library app_theme;

import 'package:akt_token/shared/extensions/msp_extensions.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

part 'buttons_theme.dart';
part 'text_theme.dart';
part 'app_bar_theme.dart';

class AppTheme {
  static ThemeData? _theme;

  static ThemeData get dark {
    _theme ??= ThemeData(
      primaryColor: AppColors.primary,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      appBarTheme: const _AppBarTheme(),
      textTheme: const _TextTheme(),
      // sliderTheme: _SliderTheme(),
      elevatedButtonTheme: _ElevatedButtonThemeData(),
    );
    return _theme!;
  }
}
