
import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class DoctorSelectRowName extends StatelessWidget {
  const DoctorSelectRowName({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.doctorSelectName,
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
