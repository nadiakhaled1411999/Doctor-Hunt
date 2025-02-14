import 'package:untitled/core/routing/route_export_features/export_time_screen/route_export_time_screen.dart';
class TimeSlotsGridViewBuilder extends StatelessWidget {
  const TimeSlotsGridViewBuilder({super.key, required this.timeSlotsList});
  final List<String> timeSlotsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5.w,
          mainAxisSpacing: 5.h,
          childAspectRatio: 1.3.sp,
        ),
        itemCount: timeSlotsList.length,
        itemBuilder: (context, index) {
          return TimeScreenContainerSlots(
            timeSlotsList: timeSlotsList,
            index: index,
          );
        },
      ),
    );
  }
}
