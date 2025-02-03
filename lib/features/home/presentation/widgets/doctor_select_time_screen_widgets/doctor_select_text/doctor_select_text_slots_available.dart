import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectTextSlotsAvailable extends StatelessWidget {
  const DoctorSelectTextSlotsAvailable({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.selectTimeTextSlotsAvailable,
      style: AppStyles.getRegularStyle(fontSize: 15),
    );
  }
}
