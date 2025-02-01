import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
 class FeatureDoctorCard extends StatelessWidget {
  final String name;
  final String salary;
  final String imageFeatureDoctor;
  final String iconPath;
  final String rate;
  const FeatureDoctorCard({
    super.key,
    required this.name,
    required this.salary,
    required this.imageFeatureDoctor,
    required this.iconPath,
    required this.rate,
  });
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
        child: Column(
          children: [
            FeatureDoctorCardHeader(iconPath: iconPath, rate: rate),
            FeatureDoctorCardAvatar(imageFeatureDoctor: imageFeatureDoctor),
            verticalSpace(14),
            FeatureDoctorCardName(name: name),
            FeatureDoctorCardSalary(salary: salary),
          ],
        ),
      ),
    );
  }
}