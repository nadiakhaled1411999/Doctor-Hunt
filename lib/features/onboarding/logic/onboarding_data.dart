

import 'package:untitled/core/constants/app_assets.dart';

import '../data/models/onboardingmodel.dart';

class OnboardingData{

  List<OnboardingModel> items = [
    OnboardingModel(  image:  AppAssets.doctor1,
        title: "Find Trusted Doctors",
        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
      ),

    OnboardingModel( image: AppAssets.doctor2,
        title: "Choose Best Doctors",
        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
       ),

    OnboardingModel( image: AppAssets.doctor3,
        title: "Easy Appointments",
        description:"Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
       ),

  ];
}