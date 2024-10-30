import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

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
          Text(AppStrings.seeAllText,
              style: AppStyles.getRegularStyle(
                  //! TODO: In the current implementation, clarification is needed regarding the use of a font weight of 500 when the text is already styled as regular. Additionally, it is unclear why the weight of the regular style text was altered.
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
