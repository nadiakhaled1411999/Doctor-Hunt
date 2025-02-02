import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorBookingSection extends StatelessWidget {
  const FindDoctorBookingSection({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FindDoctorColumnBookingSection(doctorModel: doctorModel),
          horizontalSpace(50),
          FindDoctorTextButton(),
        ],
      ),
    );
  }
}
