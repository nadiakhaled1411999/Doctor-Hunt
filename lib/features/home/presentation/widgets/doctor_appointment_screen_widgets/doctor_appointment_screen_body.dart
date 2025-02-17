import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_screen/route_doctor_appointment_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_screen_widgets/appointment_screen_column_body.dart';
class  DoctorAppointmentScreenBody extends StatelessWidget {
  const  DoctorAppointmentScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
          BackGround(),
         AppointmentScreenColumnBody(),
        ]);
  }
}