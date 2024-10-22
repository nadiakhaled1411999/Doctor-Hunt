import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/constants/app_assets.dart';
import 'package:untitled/core/heplers/spacing.dart';
import 'package:untitled/core/theming/app_colors.dart';
import 'package:untitled/core/theming/app_styles.dart';
import 'package:untitled/features/onboarding/presentation/widgest/text_button_onboarding.dart';

import '../../logic/onboarding_data.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingData();
  final pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              currentIndex == 1
                  ? AppAssets.backOnBoarding2
                  : AppAssets.backOnBoarding,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 160.r,
                            backgroundColor: AppColors.white,
                            child: ClipOval(
                              child: Image.asset(
                                controller.items[currentIndex].image,
                                height: 336.h,
                                width: 336.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          verticalSpace(55),
                          Text(
                            controller.items[currentIndex].title,
                            style: AppStyles.getTitleStyle(),
                            textAlign: TextAlign.center,
                          ),
                          verticalSpace(5),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Text(
                              controller.items[currentIndex].description,
                              style: AppStyles.getDescriptionStyle(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              TextButtonOnboarding(),
            ],
          ),
        ],
      ),
    );
  }
}
