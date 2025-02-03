 import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectTimeBuildCard extends StatelessWidget {
  const DoctorSelectTimeBuildCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 113.h,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 2,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Row(
            children: [
              DoctorSelectImage(),
              horizontalSpace(5),
              DoctorSelectColumnInCard(),
            ],
          ),
        ),
      ),
    );
  }
}
