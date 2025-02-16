import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class DoctorDetailsColumnBody extends StatelessWidget {
  const DoctorDetailsColumnBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        child: Column(children: [
          BuildHeader(headerText: AppStrings.doctorDetailsText),
          verticalSpace(20),
          DoctorDetailsBuildCard(),
          verticalSpace(10),
          DoctorDetailsStatsCard(),
          verticalSpace(20),
          DoctorDetailsColumnServices(),
        ]),
      ),
    );
  }
}
