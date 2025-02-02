import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
 class FindDoctorInfoSection extends StatelessWidget {
  const FindDoctorInfoSection({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FindDoctorImage(doctorModel: doctorModel),
          horizontalSpace(10),
        FindDoctorColumnInfoSection(doctorModel: doctorModel),
        ],
      ),
    );
  }
}
