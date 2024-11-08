import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';

class OnboardingNextButton extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  final PageController pageController;
  const OnboardingNextButton(
      {super.key,
      required this.currentIndex,
      required this.itemCount,
      required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      width: 295.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.primaryColor,
      ),
      child: TextButton(
        onPressed: () {
          if (currentIndex == itemCount - 1) {
            Navigator.pushNamed(context, Routes.loginScreen);
          } else {
            pageController.animateToPage(
              currentIndex + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        child: Text(
          currentIndex == itemCount - 1
              ? AppStrings.getStarted
              : AppStrings.getStarted,
          style: AppStyles.getMediumStyle(),
        ),
      ),
    );
  }
}
