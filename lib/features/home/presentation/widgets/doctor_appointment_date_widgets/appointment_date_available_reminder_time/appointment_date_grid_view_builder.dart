import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/appointment_date_available_reminder_time/appointment_date_selector_time.dart';

class AppointmentDateListViewBuilder extends StatelessWidget {
  const AppointmentDateListViewBuilder(
      {super.key, required this.timeSlotsList});
  final List<String> timeSlotsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: timeSlotsList.length,
        itemBuilder: (context, index) {
          return AppointmentDateSelectorTimeItem(
              index: index, timeSlotsList: timeSlotsList);
        },
      ),
    );
  }
}
