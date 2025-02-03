import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';

class DoctorSelectColumnInContainer extends StatelessWidget {
  const DoctorSelectColumnInContainer(
      {super.key, required this.doctorSelectDateModel});
  final DoctorSelectDateModel doctorSelectDateModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        doctorSelectDateModel.date,
        style: AppStyles.getBoldStyle(
            fontSize: 20,
            color: doctorSelectDateModel.isSelected
                ? AppColors.white
                : AppColors.black),
      ),
      Text(
        doctorSelectDateModel.slotsAvailable,
        style: AppStyles.getCustomStyle(fontSize: 13),
      )
    ]);
  }
}
