import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

class PopularDoctorslist extends StatelessWidget {
  const PopularDoctorslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SizedBox(
          //! TODO: Consider using `List.generate` to improves code readability and maintainability by reducing repetition and dynamically generating the required number of star widgets..

          height: 200.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              PopularDoctorCard(
                  //! TODO: Add all strings to the strings file in the core.
                  name: 'Dr. Fillerup Grab',
                  specialty: 'Medicine Specialist',
                  imageDoctor: AppAssets.popularDoctor1),
              horizontalSpace(5),
              PopularDoctorCard(
                  name: 'Dr. Blessing',
                  specialty: 'Dentist Specialist',
                  imageDoctor: AppAssets.popularDoctor2),
              horizontalSpace(5),
              PopularDoctorCard(
                  name: 'Dr.Nadia',
                  specialty: 'Dentist Specialist',
                  imageDoctor: AppAssets.popularDoctor3),
            ],
          )),
    );
  }
}
