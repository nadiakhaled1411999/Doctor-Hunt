import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectOrText extends StatelessWidget {
  const DoctorSelectOrText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.selectTimeOrText,
      style: AppStyles.getRegularStyle(fontSize: 16),
    );
  }
}
