import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CalendarDecorations {
  static BoxDecoration todayDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.primaryColor,
    );
  }
  static BoxDecoration selectedDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: AppColors.primaryColor,
    );
  }
  static BoxDecoration daysOfWeekDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: AppColors.colorWhiteWithOpacity,
          width: 1.5.w,
        ),
      ),
    );
  }
}