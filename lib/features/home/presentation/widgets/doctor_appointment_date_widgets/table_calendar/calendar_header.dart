import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CalendarHeader {
  static HeaderStyle buildHeader(DateTime selectedDay, ValueNotifier<DateTime> notifier) {
    return HeaderStyle(
      formatButtonVisible: false,
      titleTextStyle: AppStyles.getMediumStyle(),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.r),
          topLeft: Radius.circular(10.r),
        ),
      ),
      headerPadding: EdgeInsets.only(left: 8.w),
      rightChevronIcon: ChevronRow.build(selectedDay, notifier),
      leftChevronVisible: false,
    );
  }
}