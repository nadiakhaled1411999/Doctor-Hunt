import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectColumnBody extends StatelessWidget {
  const DoctorSelectColumnBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BuildHeader(
        headerText: AppStrings.selectTimeHeaderText,
      ),
      verticalSpace(30),
      DoctorSelectTimeBuildCard(),
      verticalSpace(15),
      SizedBox(
        height: 82.h,
        child: DoctorSelectDateListViewBuilder(
            doctorSelectDateModelList: doctorSelectDateModelList),
      ),
      verticalSpace(15),
      DoctorSelectTextDate(),
      verticalSpace(20),
      DoctorSelectTextSlotsAvailable(),
      verticalSpace(20),
      DoctorSelectButtonNextAvailable(),
      verticalSpace(12),
      DoctorSelectOrText(),
      verticalSpace(12),
      DoctorButtonContactClinic(),
    ]);
  }
}
