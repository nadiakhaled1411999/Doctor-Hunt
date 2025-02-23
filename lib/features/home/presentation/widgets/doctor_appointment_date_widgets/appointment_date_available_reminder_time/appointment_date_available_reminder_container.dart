import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class AppointmentDateAvailableReminderContainer extends StatelessWidget {
  const AppointmentDateAvailableReminderContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.colorGrayWithShadow2,
              blurRadius: 25,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(46.r), topRight: Radius.circular(46.r))),
      child: AppointmentDateAvailableReminderColumnBody(),
    );

  }
}
