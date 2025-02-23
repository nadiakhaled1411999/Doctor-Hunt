import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CalendarTextStyles {
  static TextStyle todayTextStyle() {
    return AppStyles.getBoldStyle(fontSize: 16);
  }
  static TextStyle selectedTextStyle() {
    return AppStyles.getBoldStyle(fontSize: 16, color: AppColors.white);
  }
  static TextStyle defaultTextStyle() {
    return AppStyles.getSemiBoldStyle(fontSize: 15, color: AppColors.black);
  }
static TextStyle weekendTextStyle() {
  return AppStyles.getBoldStyle(fontSize: 15, height: 0.5, color: AppColors.black);
}
  static TextStyle weekdayTextStyle() {
    return AppStyles.getBoldStyle(fontSize: 15, height: 0.5);
  }
}