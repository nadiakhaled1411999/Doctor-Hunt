import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class DoctorDetailsBuildCard extends StatelessWidget {
  const DoctorDetailsBuildCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 172.h,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 2,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            children: [
             DoctorDetailsRowBodyCard(),
              verticalSpace(14),
              Center(child: DoctorDetailsTextButton()),
            ],
          ),
        ),
      ),
    );
  }
}
