
import 'package:untitled/core/routing/route_export_features/export_time_screen/export_time_screen.dart';
import 'package:untitled/features/home/presentation/widgets/time_screen_widgets/time_screen_/time_screen_time_slots_list/afternoon_slots_list.dart';
import 'package:untitled/features/home/presentation/widgets/time_screen_widgets/time_screen_/time_screen_time_slots_list/evening_slots_list.dart';
import 'package:untitled/features/home/presentation/widgets/time_screen_widgets/time_screen_/time_screen_time_slots_list/time_slots_grid_view_builder.dart';
import '../../../../core/theming/styles.dart';
  class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                BuildHeader(headerText: "Select Time"),
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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Afternoon 7 slots",
                          style: AppStyles.getBoldStyle(
                              fontSize: 18,  ),
                        ),
                        TimeSlotsGridViewBuilder(timeSlotsList:  afternoonSlotsList),
                        verticalSpace(5),
                        Text(
                          "Evening 5 slots",
                          style: AppStyles.getBoldStyle(
                              fontSize: 18, ),
                        ),
                        TimeSlotsGridViewBuilder(timeSlotsList:  eveningSlotsList),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
