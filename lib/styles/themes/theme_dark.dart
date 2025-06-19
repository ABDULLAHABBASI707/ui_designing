import 'package:flutter/material.dart';
import '../colors/colors_scheme.dart';
import '../colors/colors_theme_ext.dart';
import '../colors/custom_colors.dart';
import '../typography/typography_custom.dart';

class ThemeDark {
  static ThemeData get darkTheme => _darkTheme;

  static final _darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: CustomColorScheme.dark,
    textTheme: TypographyTextTheme.lighttextTheme,
    scaffoldBackgroundColor: CustomColors.black900,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        height: 24 / 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: CustomColors.white,
      ),
    ),

    extensions: <ThemeExtension<dynamic>>[
      AppColors(
        appbarColor: CustomColors.amber600,
        scafoldColor: CustomColors.black50,
        primaryColor: CustomColors.green500,
        secondaryColor: CustomColors.black50,
      ),
    ],
  );
}
