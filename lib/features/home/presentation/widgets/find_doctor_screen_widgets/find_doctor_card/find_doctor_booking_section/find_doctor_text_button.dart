import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorTextButton extends StatelessWidget {
  const FindDoctorTextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppTextButton(
          buttonText: AppStrings.findDoctorTextInTextButton,
          borderRadius: 5.sp,
          textStyle: AppStyles.getMediumStyle(),
          buttonWidth: 110.w,
          buttonHeight: 42.h,
          onPressed: () {}),
    );
  }
}
