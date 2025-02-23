import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  AlterDialogDoneTextButton extends StatelessWidget {
  const  AlterDialogDoneTextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return AppTextButton(
                borderRadius: 8,
                buttonText: AppStrings.doneText,
                textStyle: AppStyles.getMediumStyle(),
                onPressed: () { Navigator.of(context).pop();});
  }
}