import 'package:untitled/core/routing/route_export_features/export_time_screen/route_export_time_screen.dart';
class TimeScreenColumnBody extends StatelessWidget {
  const TimeScreenColumnBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          BuildHeader(headerText: AppStrings.selectTimeText),
          verticalSpace(20),
          DoctorSelectTimeBuildCard(),
          verticalSpace(10),
          SizedBox(
            height: 82.h,
            child: DoctorSelectDateListViewBuilder(
              doctorSelectDateModelList: doctorSelectDateModelList,
            ),
          ),
          verticalSpace(10),
          DoctorSelectTextDate(),
          verticalSpace(30),
          TimeScreenColumnTimeSlots(),
        ],
      ),
    );
  }
}
