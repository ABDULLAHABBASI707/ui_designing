import 'package:flutter/material.dart';
import 'package:ui_designing/styles/layouts/fonts.dart';
import '../colors/colors_scheme.dart';
import '../colors/colors_theme_ext.dart';
import '../colors/custom_colors.dart';
import '../typography/typography_custom.dart';
import '../typography/typography_theme_ext.dart';

class ThemeLight {
  static ThemeData get lightTheme => _lightTheme;

  static final _lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: CustomColorScheme.light,
    textTheme: TypographyTextTheme.lighttextTheme,
    scaffoldBackgroundColor: CustomColors.black900,
    appBarTheme: const AppBarTheme(
     backgroundColor: Colors.blue,
      elevation: 0,
      surfaceTintColor: Colors.blue,
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
        primaryColor: CustomColors.green600,
        secondaryColor: CustomColors.black50,
      ),

      CustomTextStyle(
        headlineLargeGreen:TextStyle(
          color: CustomColors.green500,
          fontWeight: FontWeight.bold,
          fontSize: FontSize.f18,
        ),
        headinglarge: TextStyle(
          fontSize: FontSize.f32,
          fontWeight: FontWeight.w600,
          color: CustomColors.black900,
        ),
        titlemedium: TextStyle(
          fontSize: FontSize.f24,
          fontWeight: FontWeight.w700,
          color: CustomColors.black400,
        ),
        bodysmall: TextStyle(
          fontSize: FontSize.f24,
          fontWeight: FontWeight.w700,
          color: CustomColors.black400,
        ),

      ),
    ],
  );
}
