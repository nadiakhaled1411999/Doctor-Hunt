import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
 class AppointmentDateAvailableReminderColumnBody extends StatelessWidget {
  const AppointmentDateAvailableReminderColumnBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(25.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppointmentDateAvailableText(),
            verticalSpace(12),
            AppointmentDateListViewBuilder(
              timeSlotsList: appointmentDateAvailabLeTimeList,
            ),
            AppointmentDateReminderText(),
            AppointmentDateListViewBuilder(
              timeSlotsList: appointmentDateReminderTimeList,
            ),
            verticalSpace(20),
            AppointmentDateConfirmTextButton(),
          ],
        ));
  }
}
