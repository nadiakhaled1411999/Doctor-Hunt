import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';

class DoctorDetailsDivider extends StatelessWidget {
  const DoctorDetailsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.h,
      indent: 7.w,
      endIndent: 7.w,
      color: AppColors.transparent,
    );
  }
}
