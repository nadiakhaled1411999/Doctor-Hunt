import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorColumnBookingSection extends StatelessWidget {
  const FindDoctorColumnBookingSection({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.nextAvailable,
          style: AppStyles.getBoldStyle(
              color: AppColors.primaryColor, fontSize: 15),
        ),
        verticalSpace(5.h),
        FindDoctorRichTextBooking(doctorModel: doctorModel),
      ],
    );
  }
}
