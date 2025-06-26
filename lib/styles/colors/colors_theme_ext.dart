import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.appbarColor,
    required this.popumenbtn,
    required this.weather_container,
    required this.note_container,
    required this.scafoldColor,
    required this.primaryColor,
    required this.secondaryColor,
  });

  final Color appbarColor;
  final Color popumenbtn;
  final Color weather_container;
  final Color note_container;
  final Color scafoldColor;
  final Color primaryColor;
  final Color secondaryColor;

  ThemeExtension<AppColors> copyWith({

    Color? appbarColor,
    Color? popumenbtn,
    Color? weather_container,
    Color? note_container,
    Color? scafoldColor,
    Color? primaryColor,
    Color? secondaryColor,
  }) {
    return AppColors(
      appbarColor: appbarColor ?? this.appbarColor,
      popumenbtn: popumenbtn ??this.popumenbtn,
      weather_container: weather_container??this.weather_container,
      note_container: note_container??this.note_container,
      scafoldColor: scafoldColor ?? this.scafoldColor,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: scafoldColor ?? this.secondaryColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      popumenbtn: popumenbtn,
      appbarColor: appbarColor,
      weather_container: weather_container,
      note_container: note_container,
      scafoldColor: scafoldColor,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,

    );
  }
}
