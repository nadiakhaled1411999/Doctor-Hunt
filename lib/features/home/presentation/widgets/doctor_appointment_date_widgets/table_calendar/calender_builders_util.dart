import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CalendarBuildersUtil {
  static CalendarBuilders buildCalendarBuilders() {
    return CalendarBuilders(
      todayBuilder: (context, date, events) => CircleDate(day: date.day.toString()),
      selectedBuilder: (context, date, events) => CircleDate(day: date.day.toString()),
    );
  }
}