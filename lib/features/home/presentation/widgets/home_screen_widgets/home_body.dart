import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          HomeBackGround(),
          Column(children: [
            HomeContainer(),
            verticalSpace(10),
            BuildListIconCard(),
            verticalSpace(10),
            BuildPopularDoctorText(),
            PopularDoctorslist(),
            BuildFeatureDoctorTex(),
            FeaturedDoctorsList(),
          ]),
        ],
      ),
    );
  }
}
