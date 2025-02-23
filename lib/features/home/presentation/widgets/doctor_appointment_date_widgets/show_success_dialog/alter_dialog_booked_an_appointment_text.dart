import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  AlterDialogBookedAnAppointmentText extends StatelessWidget {
  const  AlterDialogBookedAnAppointmentText({super.key});
  @override
  Widget build(BuildContext context) {
    return  Text(
AppStrings.bookedAnAppointmentText,
              textAlign: TextAlign.center,
              style: AppStyles.getRegularStyle(),
            );
  }
}