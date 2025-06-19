import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.appbarColor,
    required this.scafoldColor,
    required this.primaryColor,
    required this.secondaryColor,
  });

  final Color appbarColor;
  final Color scafoldColor;
  final Color primaryColor;
  final Color secondaryColor;

  ThemeExtension<AppColors> copyWith({
    Color? appbarColor,
    Color? scafoldColor,
    Color? primaryColor,
    Color? secondaryColor,
  }) {
    return AppColors(
      appbarColor: appbarColor ?? this.appbarColor,
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
      appbarColor: appbarColor,
      scafoldColor: scafoldColor,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,

    );
  }
}
