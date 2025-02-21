import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';

class AppointmentDateBuildTableCalendar extends StatelessWidget {
  AppointmentDateBuildTableCalendar({super.key});

  final ValueNotifier<DateTime> selectedDayNotifier =
      ValueNotifier<DateTime>(DateTime.utc(2021, 2, 17));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<DateTime>(
      valueListenable: selectedDayNotifier,
      builder: (context, selectedDay, child) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: selectedDay,
            startingDayOfWeek: StartingDayOfWeek.saturday,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleTextStyle: AppStyles.getMediumStyle(),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r),
                ),
              ),
              headerPadding: EdgeInsets.only(left: 8.w),
              rightChevronIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      selectedDayNotifier.value = DateTime(
                        selectedDay.year,
                        selectedDay.month - 1,
                        selectedDay.day,
                      );
                    },
                    child: Icon(Icons.chevron_left,
                        color: AppColors.white, size: 25.sp),
                  ),
                  GestureDetector(
                    onTap: () {

                      selectedDayNotifier.value = DateTime(
                        selectedDay.year,
                        selectedDay.month + 1,
                        selectedDay.day,
                      );
                    },
                    child: Icon(Icons.chevron_right,
                        color: AppColors.white, size: 25.sp),
                  ),
                ],
              ),
              leftChevronVisible: false,
            ),
            rowHeight: 35.h,
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextFormatter: (date, locale) {
                const days = ['Tu', 'We', 'Th', 'Fr', 'Sa', 'Su', 'Mo'];
                return days[date.weekday - 1];
              },
              weekdayStyle: AppStyles.getBoldStyle(fontSize: 15, height: 0.5),
              weekendStyle: AppStyles.getBoldStyle(fontSize: 15, height: 0.5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.colorWhiteWithOpacity,
                    width: 1.5.w,
                  ),
                ),
              ),
            ),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
                border: Border.all(color: AppColors.primaryColor, width: 6.0),
              ),
              todayTextStyle: AppStyles.getBoldStyle(fontSize: 16),
              selectedDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
                border: Border.all(color: AppColors.primaryColor, width: 6.0),
              ),
              selectedTextStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              defaultTextStyle: TextStyle(fontSize: 16, color: Colors.black),
              weekendTextStyle: TextStyle(fontSize: 16, color: Colors.black),
              outsideDaysVisible: false,
            ),
            calendarBuilders: CalendarBuilders(
              todayBuilder: (context, date, events) {
                return _buildCircleDate(date.day.toString());
              },
              selectedBuilder: (context, date, events) {
                return _buildCircleDate(date.day.toString());
              },
            ),
            selectedDayPredicate: (day) {
              return isSameDay(day, selectedDay);
            },
            onDaySelected: (selectedDay, focusedDay) {
              selectedDayNotifier.value = selectedDay;
            },
          ),
        );
      },
    );
  }

  Widget _buildCircleDate(String day) {
    return ClipRRect(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            day,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
