import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/onboarding/presentation/screens/onboarding.dart';

class DoctorHuntApp extends StatelessWidget {
  const DoctorHuntApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return   ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doctor Hunt',

          home:OnboardingPage(),


        );
      },

    );
  }
}

