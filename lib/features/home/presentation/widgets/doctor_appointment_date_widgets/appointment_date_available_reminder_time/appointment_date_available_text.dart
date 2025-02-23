import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class AppointmentDateAvailableText extends StatelessWidget {
  const AppointmentDateAvailableText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.availableTimeText,
      style: AppStyles.getBoldStyle(fontSize: 18),
    );
  }
}
