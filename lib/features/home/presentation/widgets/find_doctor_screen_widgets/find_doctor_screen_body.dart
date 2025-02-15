import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';

class FindDoctorScreenBody extends StatelessWidget {
  const FindDoctorScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
       height: double.infinity,
      child: Stack(
        children: [
          BackGround(),
          Column(
            children: [
               Expanded(child: FindDoctorContentSizedBox()),
            ],
          )
        ],
      ),
    );
  }
}
