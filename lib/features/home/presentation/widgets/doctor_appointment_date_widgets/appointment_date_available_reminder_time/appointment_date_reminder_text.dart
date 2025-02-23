import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';

class AppointmentDateReminderText extends StatelessWidget {
  const AppointmentDateReminderText({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Text(
        AppStrings.reminderMeBeforeText,
        style: AppStyles.getBoldStyle(fontSize: 18),
      ),
    );
  }
}
