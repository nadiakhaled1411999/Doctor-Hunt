import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class DoctorDetailsMap extends StatelessWidget {
  const DoctorDetailsMap({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 240.h,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)),
            elevation: 2,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  AppAssets.mapImage,
                  fit: BoxFit.cover,
                ),
              ),
            )));
  }
}
