import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class FeatureDoctorCardAvatar extends StatelessWidget {
  final String imageFeatureDoctor;
  const FeatureDoctorCardAvatar({
    super.key,
    required this.imageFeatureDoctor,
  });
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40.r,
      backgroundImage: AssetImage(imageFeatureDoctor),
    );
  }
}