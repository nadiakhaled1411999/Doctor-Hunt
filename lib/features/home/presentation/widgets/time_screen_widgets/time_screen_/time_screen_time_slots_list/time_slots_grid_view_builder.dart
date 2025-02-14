import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/features/home/presentation/widgets/time_screen_widgets/time_screen_/time_screen_time_slots_list/time_screen_container_slots.dart';

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
