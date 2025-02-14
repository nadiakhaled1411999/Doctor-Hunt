import 'package:untitled/core/routing/route_export_features/export_time_screen/route_export_time_screen.dart';
class TimeScreenColumnTimeSlots extends StatelessWidget {
  const TimeScreenColumnTimeSlots({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AfternoonSlotsText(),
            TimeSlotsGridViewBuilder(timeSlotsList: afternoonSlotsList),
            verticalSpace(5),
            EveningSlotsText(),
            TimeSlotsGridViewBuilder(timeSlotsList: eveningSlotsList),
          ],
        ),
      ),
    );
  }
}
