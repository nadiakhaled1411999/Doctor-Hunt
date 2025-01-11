import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class FeatureDoctorCardName extends StatelessWidget {
  final String name;

  const FeatureDoctorCardName({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppStyles.getBoldStyle(color: AppColors.black, fontSize: 18),
    );
  }
}