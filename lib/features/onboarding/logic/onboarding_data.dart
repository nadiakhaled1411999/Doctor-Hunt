

 
 

import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';



class OnboardingData{

  List<OnboardingModel> items = [
    OnboardingModel(  image:  AppAssets.doctor1,
        title: AppStrings.titleOnboarding1,
        description:  AppStrings.descriptionOnboarding1
      ),

    OnboardingModel( image: AppAssets.doctor2,
        title: AppStrings.titleOnboarding2,
        description:  AppStrings.descriptionOnboarding2
       ),

    OnboardingModel( image: AppAssets.doctor3,
        title: AppStrings.titleOnboarding3,
        description: AppStrings.descriptionOnboarding3
       ),

  ];
}