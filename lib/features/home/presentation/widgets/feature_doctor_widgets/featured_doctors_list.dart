import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class FeaturedDoctorsList extends StatelessWidget {
  const FeaturedDoctorsList({super.key});
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
          scrollDirection: Axis.horizontal,
          children: List.generate(doctors.length, (index) {
            final doctor = doctors[index];
            return FeatureDoctorCard(
              name: doctor['name']!,
              salary: doctor['salary']!,
              imageFeatureDoctor: doctor['imageFeatureDoctor']!,
              iconPath: doctor['iconPath']!,
              rate: doctor['rate']!,
            );
          }),
        ),
      ),
    );
  }
}
