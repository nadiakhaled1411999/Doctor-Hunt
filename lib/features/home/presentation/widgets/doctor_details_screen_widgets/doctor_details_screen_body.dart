import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class  DoctorDetailsScreenBody extends StatelessWidget {
  const  DoctorDetailsScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          BackGround(),
        DoctorDetailsColumnBody(),
        ],
      );
  }
}