import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  DoctorAppointmentDateColumnBody extends StatelessWidget {
  const  DoctorAppointmentDateColumnBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BuildHeader(headerText: AppStrings.appointmentText),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: AppointmentCalendar(),
          ),
          verticalSpace(30),
AppointmentDateAvailableReminderContainer(),
        ]),
      );
  }
}