import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';

class  DoctorAppointmentDateBodyScreen extends StatelessWidget {
  const  DoctorAppointmentDateBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackGround(),
DoctorAppointmentDateColumnBody(),
    ]);
  }
}