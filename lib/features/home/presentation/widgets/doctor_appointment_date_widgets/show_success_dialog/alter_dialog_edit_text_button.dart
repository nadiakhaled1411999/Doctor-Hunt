import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  AlterDialogEditTextButton extends StatelessWidget {
  const  AlterDialogEditTextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                   AppStrings.editYourAppointmentText,
                  style: AppStyles.getRegularStyle(),
                ));
  }
}