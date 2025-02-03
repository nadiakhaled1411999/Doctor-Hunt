import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectTextDate extends StatelessWidget {
  const DoctorSelectTextDate({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(AppStrings.selectTimeTextDate,
        style: AppStyles.getBoldStyle(
          fontSize: 20,
        ));
  }
}
