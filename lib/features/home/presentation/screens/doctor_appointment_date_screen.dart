import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/appointment_date_available_reminder_time/appointment_date_available_time_list_data.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/appointment_date_available_reminder_time/appointment_date_grid_view_builder.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/appointment_date_available_reminder_time/appointment_date_reminder_time_list_data.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_date_widgets/table_calendar/appointment_date_build_table_calendar.dart';

class DoctorAppointmentDateScreen extends StatelessWidget {
  const DoctorAppointmentDateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BackGround(),
      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BuildHeader(headerText: AppStrings.appointmentText),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: AppointmentDateBuildTableCalendar(),
          ),
          verticalSpace(30),
          Container(
            height: 400.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(46.r),
                    topRight: Radius.circular(46.r))),
            child: Padding(
              padding: EdgeInsets.all(25.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Available Time",
                    style: AppStyles.getBoldStyle(fontSize: 18),
                  ),
                  verticalSpace(12),
                  AppointmentDateListViewBuilder(
                    timeSlotsList: appointmentDateAvailabLeTimeList,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: Text(
                      "Reminder Me Before",
                      style: AppStyles.getBoldStyle(fontSize: 18),
                    ),
                  ),
                  AppointmentDateListViewBuilder(
                    timeSlotsList: appointmentDateReminderTimeList,
                  ),
                  verticalSpace(20),
                  Center(
                    child: AppTextButton(buttonWidth: 280,
                    buttonHeight: 56,
                    borderRadius: 10,
                        buttonText: "Confirm",
                        textStyle: AppStyles.getMediumStyle(),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    ]));
  }
}
