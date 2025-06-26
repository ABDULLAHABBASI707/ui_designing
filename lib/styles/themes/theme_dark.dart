import 'package:flutter/material.dart';
import '../colors/colors_scheme.dart';
import '../colors/colors_theme_ext.dart';
import '../colors/custom_colors.dart';
import '../layouts/fonts.dart';
import '../typography/typography_custom.dart';
import '../typography/typography_theme_ext.dart';

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
        popumenbtn: CustomColors.white,
        weather_container: CustomColors.teal300,
        note_container: CustomColors.teal200,
        scafoldColor: CustomColors.black50,
        primaryColor: CustomColors.green500,
        secondaryColor: CustomColors.black50,
      ),

      CustomTextStyle(

        headlineLargeGreen:TextStyle(
          color: CustomColors.green500,
          fontWeight: FontWeight.bold,
          fontSize: FontSize.f18,
        ),

        weatherInfo: TextStyle(
          color: CustomColors.green500,
          fontSize: FontSize.f15,
          fontWeight: FontWeight.bold,
        ),
        weatherInfo1: TextStyle(
          color: CustomColors.green500,
          fontSize: FontSize.f12,
          fontWeight: FontWeight.w500,
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
