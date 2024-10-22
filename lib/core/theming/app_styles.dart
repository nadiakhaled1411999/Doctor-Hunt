import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/theming/app_colors.dart';

class AppStyles {
  static TextStyle getMediumStyle() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w500,
      fontFamily: 'Rubik',
      color: AppColors.descriptionColor,
    );

  }
static TextStyle getTitleStyle(){
    return TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Rubik',
      color: AppColors.titleColor,
    );

}
static TextStyle getDescriptionStyle(){
 return TextStyle(
    color: AppColors.descriptionColor, // استخدام اللون الرمادي للتوضيح
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Rubik',
  );
}
static TextStyle getTextButtonStyle(){
  return TextStyle(
    color: AppColors.white, // استخدام اللون الرمادي للتوضيح
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Rubik',
  );
}
}
