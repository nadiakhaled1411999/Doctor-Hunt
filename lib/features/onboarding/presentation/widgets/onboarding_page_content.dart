import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';

class OnboardingPageContent extends StatelessWidget {
  final OnboardingModel item;
  const OnboardingPageContent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
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
                item.image,
                height: 336.h,
                width: 336.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          verticalSpace(55),
          Text(
            item.title,
            style: AppStyles.getBoldStyle(),
            textAlign: TextAlign.start,
          ),
          verticalSpace(5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              item.description,
              style: AppStyles.getRegularStyle(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
