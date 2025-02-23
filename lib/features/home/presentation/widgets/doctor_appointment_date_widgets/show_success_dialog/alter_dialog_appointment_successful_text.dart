import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  AlterDialogAppointmentSuccessfulText extends StatelessWidget {
  const  AlterDialogAppointmentSuccessfulText({super.key});
  @override
  Widget build(BuildContext context) {
    return  Text(
             AppStrings.appointmentSuccessfulText,
              style: AppStyles.getRegularStyle(
                  fontSize: 16, color: AppColors.descriptionColor),
              textAlign: TextAlign.center,
            );
  }
}
