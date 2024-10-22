import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/heplers/spacing.dart';

import '../auth/login_screen.dart';
import 'color.dart';
import 'onboarding_data.dart';

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
                  ? 'assets/images/backOnBoarding2.png'  // الخلفية للشاشة الثانية
                  : 'assets/images/backOnBoarding.png',  // الخلفية للشاشات الأخرى
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController, // تأكد من ربط الـ controller بالـ PageView
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: controller.items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 160.r,
                            backgroundColor: Colors.white,
                            child: ClipOval(
                              child: Image.asset(
                                controller.items[currentIndex].image,
                                height: 336.h,
                                width: 336.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                         verticalSpace( 55),
                          Text(
                            controller.items[currentIndex].title,
                            style: TextStyle(
                              fontSize: 28.sp,
                              color: titleColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: Text(
                              controller.items[currentIndex].description,
                              style: TextStyle(
                                color: descriptionColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Rubik',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 295.w,
                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: primaryColor,
                ),
                child: TextButton(
                  onPressed: () {
                    if (currentIndex == controller.items.length - 1) {
                      // هنا ستضع كود التنقل إلى صفحة تسجيل الدخول
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(), // صفحة تسجيل الدخول
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ),
              ),

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
                    ? SizedBox.shrink() // إخفاء زر "Skip" في الصفحة الأخيرة
                    : Text(
                  "Skip",
                  style: TextStyle(
                    color: descriptionColor,
                    fontSize: 14.sp,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}


