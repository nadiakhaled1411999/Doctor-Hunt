import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class PopularDoctorslist extends StatelessWidget {
  const PopularDoctorslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SizedBox(
          height: 200.h,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(popularDoctorData.length, (index) {
                final popularDoctor = popularDoctorData[index];
                return PopularDoctorCard(
                    name: popularDoctor['name']!,
                    specialty: popularDoctor['specialty']!,
                    imageDoctor: popularDoctor['imageDoctor']!);
              }))),
    );
  }
}
