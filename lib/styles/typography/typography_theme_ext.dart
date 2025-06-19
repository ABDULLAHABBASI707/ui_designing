import 'package:flutter/material.dart';

class CustomTextStyle extends ThemeExtension<CustomTextStyle>{
 const CustomTextStyle({
   required this.headlineLargeGreen,
    required this.headinglarge,
    required this.titlemedium,
    required this.bodysmall,

});
 final TextStyle headlineLargeGreen;
 final TextStyle headinglarge;
 final TextStyle titlemedium;
 final TextStyle bodysmall;

 ThemeExtension<CustomTextStyle> copyWith({
   TextStyle? headlineLargeGold,
   TextStyle? headinglarge,
   TextStyle? titlemedium,
   TextStyle? bodysmall,
}){

   return CustomTextStyle(
     headlineLargeGreen: headlineLargeGold??this.headlineLargeGreen,
       headinglarge: headinglarge??this.headinglarge,
       titlemedium: titlemedium??this.titlemedium,
       bodysmall: bodysmall??this.bodysmall,

   );
 }

  @override
  ThemeExtension<CustomTextStyle> lerp(
      covariant ThemeExtension<CustomTextStyle>? other,
      double t) {
    if(other is!CustomTextStyle){
      return this;
    }
    return CustomTextStyle(
      headlineLargeGreen: headlineLargeGreen,
        headinglarge: headinglarge,
        titlemedium: titlemedium,
        bodysmall: bodysmall
    );
  }

}