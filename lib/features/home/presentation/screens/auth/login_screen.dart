// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/constants/app_assets.dart';
import 'package:untitled/core/heplers/spacing.dart';
import 'package:untitled/core/theming/app_colors.dart';
import 'package:untitled/core/theming/app_styles.dart';
import 'package:untitled/core/widgets/app_text_button.dart';
import 'package:untitled/core/widgets/custom_svg_image.dart';
import 'package:untitled/core/widgets/text_form_field.dart';
import 'package:untitled/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:untitled/features/home/presentation/screens/onboarding_screen/color.dart';

class LoginScreen extends StatelessWidget {
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
                      'Welcome back',
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
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
                                    spreadRadius: 0.r,
                                  ),
                                ]),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.Google,width: 20.w,
                                  ),
                                  horizontalSpace( 7),
                                  Text('Google',style: AppStyles.getMediumStyle(),),
                                ],
                              ),
                            ),
                          ),

                          // Google Button

                          horizontalSpace(12),
                          Container(
                            width: 147.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff000000).withOpacity(0.12),
                                    offset: Offset(0, 2),
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                  ),
                                ]),
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.facebook,width: 20.w,
                                  ),
                                  horizontalSpace( 7),
                                  Text('facebook',style: AppStyles.getMediumStyle(),),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                   verticalSpace( 40),

                    // Email TextField
                     SizedBox(
                       width: 400.w,
                       child: AppTextFormField(hintText:  'itsmemamun1@gmail.com',
                        radius: 10,
                         controller: TextEditingController(),
                         validator: (value){
                         if(value!.isEmpty){
                           return 'Please enter your email';

                         }return null;
                         },
                         suffixIcon: Icon(Icons.check_outlined ,),
                       ),
                     ),
                    verticalSpace( 20),
                    SizedBox(
                      width: 400.w,
                      child: AppTextFormField(hintText: '***********',radius: 12,
                      controller: TextEditingController(),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please enter your password';
                        }return null;
                      },
                        suffixIcon: Icon(Icons.visibility_off,),
                      )
                    ),

                    // Password TextField

                 verticalSpace( 30),


                    AppTextButton(
                        buttonText: 'login',

                        textStyle:AppStyles.getTextButtonStyle(),
                      buttonWidth: 290,
                      buttonHeight: 54,
                      onPressed: (){},
                    ),
                    verticalSpace( 6),


                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style: TextStyle(color: primaryColor),
                      ),
                    ),

                     verticalSpace( 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: primaryColor),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>  SignUpScreen(),
                            ),);

                          },
                          child: Text(
                            'Join us',
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
