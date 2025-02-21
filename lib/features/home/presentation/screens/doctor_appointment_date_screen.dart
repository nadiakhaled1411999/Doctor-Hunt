
import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/appointment_date_build_table_calendar.dart';

class DoctorAppointmentDateScreen extends StatelessWidget {
  const DoctorAppointmentDateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BackGround(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BuildHeader(headerText: AppStrings.appointmentText),
verticalSpace( 20),
AppointmentDateBuildTableCalendar(),

        ])),

    ]));
  }
}
