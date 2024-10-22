import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/heplers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class SochialButton extends StatelessWidget {
  final String textName;
  final String iconPath;

  const SochialButton(
      {super.key, required this.textName, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.12),
            offset: Offset(0, 2),
            blurRadius: 5.r,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 20.w,
            ),
            horizontalSpace(7),
            Text(
              textName,
              style: AppStyles.getMediumStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
