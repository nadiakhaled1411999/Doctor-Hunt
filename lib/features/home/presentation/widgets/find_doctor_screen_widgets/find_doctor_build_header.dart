import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorBuildHeader extends StatelessWidget {
  const FindDoctorBuildHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 26.h, right: 100.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomBackButton(),
          horizontalSpace(15),
          Expanded(
            child: Text(AppStrings.headerText,
                style: AppStyles.getMediumStyle(
                  color: AppColors.black2,
                )),
          )
        ],
      ),
    );
  }
}
