import 'package:flutter/material.dart';
import 'package:volleyball_scout/src/utils/theme/colors/color_schemes.g.dart';
import 'package:volleyball_scout/src/utils/theme/colors/custom_color.g.dart';
import 'package:volleyball_scout/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:volleyball_scout/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:volleyball_scout/src/utils/theme/widget_themes/textTheme.dart';

ThemeData getLightTheme() {
  ColorScheme lightScheme = lightColorScheme;

  return ThemeData(
    useMaterial3: true,
    colorScheme: lightScheme,
    textTheme: lightTextTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    outlinedButtonTheme: lightOutlinedButtonTheme,
    extensions: [lightCustomColors],
  );
}

ThemeData getDarkTheme() {
  ColorScheme darkScheme = darkColorScheme;

  return ThemeData(
    useMaterial3: true,
    colorScheme: darkScheme,
    textTheme: darkTextTheme,
    elevatedButtonTheme: darkElevatedButtonTheme,
    outlinedButtonTheme: darkOutlinedButtonTheme,
    extensions: [darkCustomColors],
  );
}
