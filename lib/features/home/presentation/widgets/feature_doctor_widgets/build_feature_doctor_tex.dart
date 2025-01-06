import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class BuildFeatureDoctorTex extends StatelessWidget {
  const BuildFeatureDoctorTex({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppStrings.featureDoctorText,
              style:
                  AppStyles.getBoldStyle(color: AppColors.black, fontSize: 18)),
          Text(AppStrings.seeAllText, style: AppStyles.getCustomStyle()),
        ],
      ),
    );
  }
}
