
import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class  FindDoctorTextFormFiled extends StatelessWidget {
  const  FindDoctorTextFormFiled({super.key});
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
        contentPadding: EdgeInsets.symmetric(vertical: 19.h),
        radius: 10,
        enabledBorderSideColor: AppColors.white,
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.descriptionColor,
          size: 18.sp,
        ),
        hintText: AppStrings.hintTextSearch,
        hintStyle: AppStyles.getRegularStyle(fontSize: 14),
        suffixIcon: Icon(
          Icons.close,
          size: 18.sp,
        ),
      );
  }
}