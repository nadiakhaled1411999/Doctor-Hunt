import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

class FeaturedDoctorslist extends StatelessWidget {
  const FeaturedDoctorslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        child: SizedBox(
          height: 200.h,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              FeatureDoctorCard(
                  //! TODO: Add all strings to the strings file in the core.
                  name: 'Dr. Crick',
                  salary: '25.00/ hours',
                  imageFeatureDoctor: AppAssets.featureDoctor1,
                  iconPath: AppAssets.heart,
                  rate: '3.7'),
              FeatureDoctorCard(
                  name: 'Dr. Strain',
                  salary: '22.00/ hours',
                  iconPath: AppAssets.heartred,
                  imageFeatureDoctor: AppAssets.featureDoctor2,
                  rate: '3.0'),
              FeatureDoctorCard(
                  name: 'Dr. Lachinet',
                  salary: '29.00/ hours',
                  imageFeatureDoctor: AppAssets.featureDoctor3,
                  iconPath: AppAssets.heart,
                  rate: '2.9'),
            ],
          ),
        ));
  }
}
