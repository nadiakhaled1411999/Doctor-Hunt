import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class ChevronRow {
  static Widget build(DateTime selectedDay, ValueNotifier<DateTime> notifier) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ChevronIcon.build(Icons.chevron_left, () {
          notifier.value = DateTime(selectedDay.year, selectedDay.month - 1, selectedDay.day);
        }),
        ChevronIcon.build(Icons.chevron_right, () {
          notifier.value = DateTime(selectedDay.year, selectedDay.month + 1, selectedDay.day);
        }),
      ],
    );
  }
}
