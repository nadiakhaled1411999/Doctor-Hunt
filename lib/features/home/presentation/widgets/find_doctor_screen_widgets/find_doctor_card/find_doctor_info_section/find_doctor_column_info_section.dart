import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorColumnInfoSection extends StatelessWidget {
  const FindDoctorColumnInfoSection({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FindDoctorRowName(doctorModel: doctorModel),
        verticalSpace(5),
        Text(doctorModel.specialty,
            style: AppStyles.getRegularStyle(
              color: AppColors.primaryColor,
            )),
        verticalSpace(5),
        Text(doctorModel.experience,
            style: AppStyles.getCustomStyle(fontSize: 14)),
        verticalSpace(6),
        FindDoctorRowRating(doctorModel: doctorModel),
      ],
    );
  }
}
