import 'package:flutter/material.dart';
import '../colors/custom_colors.dart';
import '../layouts/fonts.dart';


class TypographyTextTheme {
  static TextTheme lighttextTheme = const TextTheme(
    displayLarge: TextStyle(
      height: 64,
      backgroundColor: Colors.amberAccent,
      fontSize:FontSize.f16,
      fontWeight: FontWeight.w400,
      color: CustomColors.black50,
    ),
    displayMedium: TextStyle(
      height: 100,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w400,
      color: CustomColors.black50,
    ),
    displaySmall: TextStyle(
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
      color: CustomColors.black,
      fontSize: FontSize.f36,
    ),
    headlineMedium: TextStyle(
      fontSize: FontSize.f34,
      wordSpacing: 2,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: FontSize.f18,
      color: CustomColors.white,
    ),
    titleMedium: TextStyle(
      fontSize: FontSize.f16,
      color: CustomColors.white50,
    ),

    titleSmall: TextStyle(
      fontSize: FontSize.f14,
      color: CustomColors.black50,
    ),


  );


  static TextTheme darktextTheme = const TextTheme(
    displayLarge: TextStyle(
      height: 64 / 57,
      backgroundColor: Colors.amberAccent,
      fontWeight: FontWeight.w400,
      color: CustomColors.black50,
    ),
    displayMedium: TextStyle(
      height: 100,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      color: CustomColors.black50,
    ),
      displaySmall: TextStyle(
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: CustomColors.black,
        fontSize: FontSize.f36,
      ),
    headlineMedium: TextStyle(
      fontSize: 50,
      height: 300,
      wordSpacing: 2,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: FontSize.f18,
      color: CustomColors.white50,
    ),

      titleMedium: TextStyle(
        fontSize: FontSize.f16,
        color: CustomColors.white50,
      ),

    titleSmall: TextStyle(
      fontSize: FontSize.f14,
      color: CustomColors.black50,
    )
  );
}
