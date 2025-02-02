import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorContentSizedBox extends StatelessWidget {
  const FindDoctorContentSizedBox({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            FindDoctorBuildHeader(),
            verticalSpace(30),
            FindDoctorSearchField(),
            verticalSpace(8),
            FindDoctorListViewBuilder(doctorModelsList: doctorModelsList),
          ],
        ),
      ),
    );
  }
}
