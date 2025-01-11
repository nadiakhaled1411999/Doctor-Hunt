import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class BuildAgreeTermsText extends StatelessWidget {
  const BuildAgreeTermsText({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline, color: AppColors.descriptionColor),
          horizontalSpace(2),
          Text(AppStrings.agreeTermsText,
              style: AppStyles.getRegularStyle(fontSize: 12))
        ],
      ),
    );
  }
}
