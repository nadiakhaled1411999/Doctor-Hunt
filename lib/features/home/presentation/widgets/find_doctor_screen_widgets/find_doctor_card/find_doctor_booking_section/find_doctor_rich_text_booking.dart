import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorRichTextBooking extends StatelessWidget {
  const FindDoctorRichTextBooking({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: doctorModel.nextAvailableTime,
          style: AppStyles.getRegularStyle()),
      TextSpan(
          text: doctorModel.appointmentTime, style: AppStyles.getCustomStyle())
    ]));
  }
}
