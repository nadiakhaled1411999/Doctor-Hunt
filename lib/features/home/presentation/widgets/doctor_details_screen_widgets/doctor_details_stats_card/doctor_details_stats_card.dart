import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class DoctorDetailsStatsCard extends StatelessWidget {
  const DoctorDetailsStatsCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 280.w,
        height: 90.h,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r)),
            elevation: 3,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DoctorDetailsBuildItemContainer(
                      value: "100", label: "Running"),
                  horizontalSpace(7),
                  DoctorDetailsBuildItemContainer(
                      value: "500", label: "Ongoing"),
                  horizontalSpace(7),
                  DoctorDetailsBuildItemContainer(
                      value: "700", label: "Patient"),
                ],
              ),
            )));
  }
}
