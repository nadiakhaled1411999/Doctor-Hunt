import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CalendarStyles {
  static CalendarStyle defaultStyle() {
    return CalendarStyle(
      todayDecoration: CalendarDecorations.todayDecoration(),
      todayTextStyle: CalendarTextStyles.todayTextStyle(),
      selectedDecoration: CalendarDecorations.selectedDecoration(),
      selectedTextStyle: CalendarTextStyles.selectedTextStyle(),
      defaultTextStyle: CalendarTextStyles.defaultTextStyle(),
      weekendTextStyle: CalendarTextStyles.weekendTextStyle(),
      outsideDaysVisible: false,
    );
  }
   static DaysOfWeekStyle daysOfWeekStyle() {
  return DaysOfWeekStyle(
    dowTextFormatter: CalendarFormatters.dowTextFormatter,
    weekdayStyle: CalendarTextStyles.weekdayTextStyle(),
    weekendStyle: CalendarTextStyles.weekendTextStyle(),
    decoration: CalendarDecorations.daysOfWeekDecoration(),
  );
}

}
