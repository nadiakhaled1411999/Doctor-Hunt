import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';

class DoctorSelectColumnInCard extends StatelessWidget {
  const DoctorSelectColumnInCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DoctorSelectRowName(),
        Text(AppStrings.doctorSelectDentalClinic,
            style: AppStyles.getCustomStyle(fontSize: 13)),
        verticalSpace(5),
        DoctorSelectRatingBarIndicator(),
      ],
    );
  }
}
