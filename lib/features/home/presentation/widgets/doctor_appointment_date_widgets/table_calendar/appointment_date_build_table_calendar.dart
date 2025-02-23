import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class AppointmentCalendar extends StatelessWidget {
  AppointmentCalendar({super.key});
  final ValueNotifier<DateTime> selectedDayNotifier =
      ValueNotifier<DateTime>(DateTime.utc( 2021,2,17));
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: selectedDayNotifier,
      builder: (context, selectedDay, child) {
        return CalendarContainer(
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2035, 3, 14),
            focusedDay: selectedDay,
            startingDayOfWeek: StartingDayOfWeek.saturday,
            headerStyle: CalendarHeader.buildHeader(selectedDay, selectedDayNotifier),
            calendarStyle: CalendarStyles.defaultStyle(),
            daysOfWeekStyle: CalendarStyles.daysOfWeekStyle(),
            calendarBuilders: CalendarBuildersUtil.buildCalendarBuilders(),
            selectedDayPredicate: (day) {
              return isSameDay(day, selectedDay);
            },
            onDaySelected: (selectedDay, focusedDay) {
              selectedDayNotifier.value = selectedDay;
            },
          ),
        );
      },
    );
  }
}
