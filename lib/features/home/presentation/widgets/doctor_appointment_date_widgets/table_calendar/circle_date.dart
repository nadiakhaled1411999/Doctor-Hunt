import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class CircleDate extends StatelessWidget {
  final String day;
  const CircleDate({required this.day, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0.r),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: Text(day, style: AppStyles.getBoldStyle(fontSize: 18, color: AppColors.white)),
      ),
    );
  }
}
