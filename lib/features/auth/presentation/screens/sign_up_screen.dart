import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/auth/presentation/widgest/signup_text_form_filed.dart';

import 'package:untitled/features/auth/presentation/widgest/sochial_button.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/heplers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

import '../../../home/presentation/screens/onboarding_screen/color.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.bglogin,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Join us to start searching',
                      style: AppStyles.getTitleStyle(),
                    ),
                    verticalSpace(10),
                    Text(
                      'You can search course, apply course and find\nscholarship for abroad studies',
                      textAlign: TextAlign.center,
                      style: AppStyles.getDescriptionStyle(),
                    ),
                    verticalSpace(40),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SochialButton(
                                textName: 'Google', iconPath: AppAssets.Google),
                            horizontalSpace(12),
                            SochialButton(
                              textName: 'facebook',
                              iconPath: AppAssets.facebook,
                            )
                          ],
                        ),
                      ),
                    ),
                    verticalSpace(40),
                    SignupTextFormFiled(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.check_circle_outline,
                              color: AppColors.descriptionColor),
                          horizontalSpace(2),
                          Text(
                            'I agree with the Terms of Service & Privacy Policy',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: 'Rubik',
                                color: AppColors.descriptionColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Sign up',
                      textStyle: AppStyles.getTextButtonStyle(),
                      buttonWidth: 290,
                      buttonHeight: 54,
                      onPressed: () {},
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have an account?",
                          style: TextStyle(color: primaryColor),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in',
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
