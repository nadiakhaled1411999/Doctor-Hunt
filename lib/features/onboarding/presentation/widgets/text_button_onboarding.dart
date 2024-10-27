

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/heplers/spacing.dart';
import 'package:untitled/features/onboarding/logic/onboarding_data.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../auth/presentation/screens/login_screen.dart';
 

class TextButtonOnboarding extends StatefulWidget {
  const TextButtonOnboarding({super.key});

  @override
  State<TextButtonOnboarding> createState() => _TextButtonOnboardingState();
}

class _TextButtonOnboardingState extends State<TextButtonOnboarding> {
  final controller = OnboardingData();

  final pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children:[ Container(
        margin: EdgeInsets.symmetric(vertical: 20.h),
        width: 295.w,
        height: 54.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.primaryColor,
        ),
        child: TextButton(
          onPressed: () {
            if (currentIndex == controller.items.length - 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            } else {
              pageController.animateToPage(
                currentIndex + 1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Text(
            currentIndex == controller.items.length - 1
                ? "Get Started"
                : "Get Started",
            style:  AppStyles.getTextButtonStyle(),
          ),
        ),

      ),
      verticalSpace( 10),
      TextButton(
        onPressed: () {
          setState(() {
            pageController.animateToPage(
              controller.items.length - 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        child: currentIndex == controller.items.length - 1
            ? SizedBox.shrink()
            : Text(
          "Skip",
          style: AppStyles.getDescriptionStyle(),
        ),
      ),
   ] );
  }
}
