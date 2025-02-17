import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_screen/route_doctor_appointment_screen.dart';

class PatientAppTextButton extends StatelessWidget {
  const PatientAppTextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppTextButton(
          buttonWidth: 290,
          buttonHeight: 53,
          borderRadius: 5,
          buttonText: AppStrings.nextText,
          textStyle:
              AppStyles.getBoldStyle(color: AppColors.white, fontSize: 20),
          onPressed: () {}),
    );
  }
}
