import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/theming/app_strings.dart';

import 'core/routing/app_router.dart';
import 'features/onboarding/presentation/screens/onboarding.dart';

class DoctorHuntApp extends StatelessWidget {
  const DoctorHuntApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    final DocdtorHuntRouter  router =DocdtorHuntRouter();
    return   ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title:  AppStrings.appName,

          home:OnboardingPage(),
          onGenerateRoute: router.generateRoute,




        );
      },

    );
  }
}

