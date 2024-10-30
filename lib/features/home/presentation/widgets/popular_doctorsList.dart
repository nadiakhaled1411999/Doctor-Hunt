
import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';
 class  PopularDoctorslist extends StatelessWidget {
  const  PopularDoctorslist({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,vertical: 10.h
                  ),
                  child: SizedBox(
                      height: 200.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          PopularDoctorCard(
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