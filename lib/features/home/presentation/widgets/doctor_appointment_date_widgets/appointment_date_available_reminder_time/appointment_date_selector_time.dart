import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class AppointmentDateSelectorTimeItem extends StatelessWidget {
  AppointmentDateSelectorTimeItem(
      {super.key, required this.timeSlotsList, required this.index});
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
            padding: EdgeInsets.all(10.sp),
            child: Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected
                    ? AppColors.primaryColor
                    : Color(0xFF0EBE7F).withOpacity(0.09),
                // borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Text(
                  timeSlotsList[index],
                  textAlign: TextAlign.center,
                  style: AppStyles.getBoldStyle(
                    fontSize: 14,
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
