import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';

class DoctorDetailsRowBodyCard extends StatelessWidget {
  const DoctorDetailsRowBodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DoctorDetailsImage(),
        horizontalSpace(5),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorDetailsRowName(),
            Text(AppStrings.specialistCardiologistText,
                style: AppStyles.getCustomStyle(fontSize: 13)),
            verticalSpace(5),
            DoctorDetailsRowRatingSalary(),
          ],
        ),
      ],
    );
  }
}
