import '../../../../../core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class FeatureDoctorCard extends StatelessWidget {
  final String name;
  final String salary;
  final String imageFeatureDoctor;
  final String iconPath;
  final String rate;
  const FeatureDoctorCard(
      {super.key,
      required this.name,
      required this.salary,
      required this.imageFeatureDoctor,
      required this.iconPath,
      required this.rate});
  @override     
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      width: 130.w,
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSVGImage(
                  asset: iconPath,
                  width: 10.w,
                  height: 10.h,
                ),
                Row(
                  children: [
                    CustomSVGImage(
                      asset: AppAssets.starAmber,
                      width: 10.w,
                      height: 10.h,
                    ),
                    horizontalSpace(2),
                    Text(rate,
                        style: AppStyles.getBoldStyle(
                            color: AppColors.black, fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageFeatureDoctor),
          ),
          verticalSpace(14),
          Text(name,
              style:
                  AppStyles.getBoldStyle(color: AppColors.black, fontSize: 18)),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: '\$',
                style: AppStyles.getBoldStyle(
                    color: AppColors.primaryColor, fontSize: 12)),
            TextSpan(
                text: salary,
                style: AppStyles.getBoldStyle(
                    color: AppColors.descriptionColor, fontSize: 12)),
          ]))
        ]),
      ),
    );
  }
}
