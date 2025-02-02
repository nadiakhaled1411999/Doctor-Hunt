import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorRowRating extends StatelessWidget {
  const FindDoctorRowRating({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FindDoctorBuildCircle(),
        horizontalSpace(3),
        Text(
          doctorModel.rating,
          style: AppStyles.getCustomStyle(),
        ),
        horizontalSpace(22),
        FindDoctorBuildCircle(),
        horizontalSpace(3),
        Text(
          doctorModel.patientStories,
          style: AppStyles.getCustomStyle(),
        ),
      ],
    );
  }
}
