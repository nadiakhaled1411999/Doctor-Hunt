 import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';
class OnboardingBackGround extends StatelessWidget {
 final int currentIndex;
  const OnboardingBackGround({super.key,required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return  Positioned.fill(
            child: Image.asset(
              currentIndex == 1
                  ? AppAssets.backOnBoarding2
                  : AppAssets.backOnBoarding,
              fit: BoxFit.cover,
            ),
          );
  }
}
