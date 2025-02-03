import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectTimeScreenBody extends StatelessWidget {
  const DoctorSelectTimeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(children: [
        BackGround(),
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: DoctorSelectColumnBody(),
          ),
        ),
      ]),
    );
  }
}
