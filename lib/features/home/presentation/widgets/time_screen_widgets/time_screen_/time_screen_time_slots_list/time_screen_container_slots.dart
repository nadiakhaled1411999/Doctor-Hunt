import 'package:untitled/core/routing/route_export_features/export_time_screen/export_time_screen.dart';
import 'package:untitled/core/theming/app_colors.dart';
import 'package:untitled/core/theming/styles.dart';

class TimeScreenContainerSlots extends StatelessWidget {
  TimeScreenContainerSlots({super.key, required this.timeSlotsList, required this.index});
  final List<String> timeSlotsList;
  final int index;
  final ValueNotifier<bool> isSelected = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isSelected,
      builder: (context, selected, child) {
        return GestureDetector(
          onTap: () {
            isSelected.value = !selected;
          },
          child: Padding(
            padding: EdgeInsets.all(2.sp),
            child: Container(
             height: 50.h,
             width: 100.w,
              decoration: BoxDecoration(
                color: selected
                    ? AppColors.primaryColor
                    : Color(0xFF0EBE7F).withOpacity(0.09),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Text(
                  timeSlotsList[index],
                  style: AppStyles.getBoldStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: selected ? AppColors.white : AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
