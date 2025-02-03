import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';

class DoctorButtonContactClinic extends StatelessWidget {
  const DoctorButtonContactClinic({super.key});
  @override
  Widget build(BuildContext context) {
    return AppTextButton(
        borderColor: AppColors.borderColor,
        borderWidth: 1,
        buttonWidth: 310,
        buttonHeight: 62,
        borderRadius: 8,
        backgroundColor: Colors.transparent,
        buttonText: AppStrings.selectTimeTextContactClinic,
        textStyle:
            AppStyles.getBoldStyle(color: AppColors.primaryColor, fontSize: 21),
        onPressed: () {});
  }
}
