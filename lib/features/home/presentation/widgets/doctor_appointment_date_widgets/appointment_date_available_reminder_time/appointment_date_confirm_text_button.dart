import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/show_success_dialog/show_success_dialog_build.dart';

class AppointmentDateConfirmTextButton extends StatelessWidget {
  const AppointmentDateConfirmTextButton({super.key});
  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) =>
          const ShowSuccessDialogBuild(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppTextButton(
          buttonWidth: 280,
          buttonHeight: 56,
          borderRadius: 10,
          buttonText: AppStrings.confirmText,
          textStyle: AppStyles.getMediumStyle(),
          onPressed: () {
            showSuccessDialog(context);
          }),
    );
  }
}
