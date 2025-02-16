import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class DoctorDetailsBuildItemContainer extends StatelessWidget {
  const DoctorDetailsBuildItemContainer({super.key, required this.value, required this.label});
  final String value;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: 80.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.colorWhiteWithOpacity),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: AppStyles.getBoldStyle(fontSize: 18),
          ),
          Text(
            label,
            style: AppStyles.getCustomStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
