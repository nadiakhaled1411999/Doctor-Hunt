
import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class  DoctorDetailsRowName extends StatelessWidget {
  const  DoctorDetailsRowName({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.doctorDetailsNameText,
          style: AppStyles.getBoldStyle(fontSize: 20),
        ),
        horizontalSpace(70),
        CustomSVGImage(
          asset: AppAssets.heartRed,
          width: 17,
          height: 17,
        )
      ],
    );
  }
}