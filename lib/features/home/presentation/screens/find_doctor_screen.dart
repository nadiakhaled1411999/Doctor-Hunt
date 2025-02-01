import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/constants/app_assets.dart';
import 'package:untitled/core/helpers/spacing.dart';


import 'package:untitled/core/theming/app_colors.dart';
import 'package:untitled/core/theming/styles.dart';
import 'package:untitled/core/widgets/app_text_button.dart';
import 'package:untitled/core/widgets/custom_svg_image.dart';
import 'package:untitled/core/widgets/text_form_field.dart';

class FindDoctorScreen extends StatelessWidget {
  const FindDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            AppAssets.background1,
            fit: BoxFit.cover,
          )),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 26.h, right:100.w),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 33.h,
                            width: 33.w,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: AppColors.descriptionColor,
                                  )),
                            )),
                        horizontalSpace(15),
                        Expanded(
                          child: Text("Find Doctors",
                              style: AppStyles.getMediumStyle(
                                color: AppColors.black2,
                              )),
                        )
                      ],
                    ),
                  ),
                  verticalSpace(30),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40.r,
                          spreadRadius: 0.r,
                          offset: Offset(0, 0))
                    ]),
                    child: AppTextFormField(
                      contentPadding: EdgeInsets.symmetric(vertical: 19.h),
                      radius: 10,
                      enabledBorderSideColor: AppColors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColors.descriptionColor,
                        size: 18.sp,
                      ),
                      hintText: "Dentist",
                      hintStyle: AppStyles.getRegularStyle(fontSize: 14),
                      suffixIcon: Icon(
                        Icons.close,
                        size: 18.sp,
                      ),
                    ),
                  ),
                  verticalSpace(20),
                  SizedBox(
                    height: 230.h,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      elevation: 3,
                      color: AppColors.white,
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AppAssets.findDoctor1,
                                    width: 110.w,
                                    height: 110.h,
                                  ),
                                  horizontalSpace(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Dr.Shruti Kedia",
                                            style: AppStyles.getBoldStyle(
                                                fontSize: 20),
                                          ),
                                          horizontalSpace(30),
                                          CustomSVGImage(
                                            asset: AppAssets.heartRed,
                                            width: 20,
                                            height: 20,
                                          )
                                        ],
                                      ),
                                      verticalSpace(5),
                                      Text("Tooths Dentist",
                                          style: AppStyles.getRegularStyle(
                                            color: AppColors.primaryColor,
                                          )),
                                      verticalSpace(5),
                                      Text("7 Years experience ",
                                          style: AppStyles.getCustomStyle(
                                              fontSize: 14)),
                                      verticalSpace(6),
                                      Row(
                                        children: [
                                          Container(
                                            width: 12.w,
                                            height: 12.h,
                                            decoration: const BoxDecoration(
                                              color: AppColors.gradientColor1,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          horizontalSpace(3),
                                          Text(
                                            "87%",
                                            style: AppStyles.getCustomStyle(),
                                          ),
                                          horizontalSpace(22),
                                          Container(
                                            width: 12.w,
                                            height: 12.h,
                                            decoration: const BoxDecoration(
                                              color: AppColors.gradientColor1,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          horizontalSpace(3),
                                          Text(
                                            "69 Patient Stories",
                                            style: AppStyles.getCustomStyle(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 14.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Next Available",
                                        style: AppStyles.getBoldStyle(
                                            color: AppColors.primaryColor,
                                            fontSize: 15),
                                      ),
                                      verticalSpace(5.h),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "10:00 ",
                                            style: AppStyles.getRegularStyle()),
                                        TextSpan(
                                            text: "AM tomorrow",
                                            style: AppStyles.getCustomStyle())
                                      ]))
                                    ],
                                  ),
                                  horizontalSpace(50),
                                  Expanded(
                                    child: AppTextButton(
                                        buttonText: "Book Now",
                                        borderRadius: 5.sp,
                                        textStyle: AppStyles.getMediumStyle(),
                                        buttonWidth: 110.w,
                                        buttonHeight: 42.h,
                                        onPressed: () {}),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
/* Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        
                                          Text(
                                            "Dr.Shruti Kedia",
                                            style: AppStyles.getBoldStyle(fontSize:20 ),
                                          
                                        ),
                                        horizontalSpace(20.w),
                                        CustomSVGImage(
                                          asset: AppAssets.heartRed,
                                          width: 20,
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),*/