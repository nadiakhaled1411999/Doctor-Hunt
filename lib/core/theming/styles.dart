
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/theming/app_colors.dart';

import 'font_family.dart';

class AppStyles {
  AppStyles._();

  static final AppStyles _instance = AppStyles._();

  factory AppStyles() => _instance;

  static TextStyle getRegularStyle({
    double fontSize = 13,
    Color? color = AppColors.descriptionColor,
    FontWeight? fontWeight = FontWeight.w600,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
         fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

  static TextStyle getBoldStyle({
    double fontSize = 28,
    Color? color = AppColors.titleColor,
    FontWeight? fontWeight = FontWeight.bold,
     String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

  static TextStyle getSemiBoldStyle({
    double fontSize = 14,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w600,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
  static TextStyle getMediumStyle({
    double fontSize = 18,
    Color? color = AppColors.white,
    FontWeight? fontWeight = FontWeight.w600,
    String fontFamily = FontFamilies.interFamily,
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
          fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
}
