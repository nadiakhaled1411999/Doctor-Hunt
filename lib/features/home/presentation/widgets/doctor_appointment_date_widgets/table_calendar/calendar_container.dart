import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CalendarContainer extends StatelessWidget {
  final Widget child;
  const CalendarContainer({required this.child, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.colorGrayWithShadow2,
            blurRadius: 25.r,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: child,
    );
  }
}
