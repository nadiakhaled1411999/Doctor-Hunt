import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';

class OnboardingSkipButton extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  final PageController pageController;
  const OnboardingSkipButton(
      {super.key,
      required this.currentIndex,
      required this.itemCount,
      required this.pageController});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
              onPressed: () {
                    if (currentIndex < itemCount - 1) {
          pageController.animateToPage(
            itemCount - 1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );}
              },
              child: currentIndex == itemCount - 1
                  ? SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      child: Text(
                        AppStrings.skip,
                        style: AppStyles.getRegularStyle(),
                      ),
                    ),
            ); }}