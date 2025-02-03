import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
 
class DoctorSelectButtonNextAvailable extends StatelessWidget {
  const DoctorSelectButtonNextAvailable({super.key});
  @override
  Widget build(BuildContext context) {
    return AppTextButton(
        buttonWidth: 310,
        buttonHeight: 62,
        borderRadius: 8,
        buttonText: AppStrings.selectTimeTextButtonNextAvailability,
        textStyle: AppStyles.getBoldStyle(color: AppColors.white, fontSize: 20),
        onPressed: () {});
  }
}
