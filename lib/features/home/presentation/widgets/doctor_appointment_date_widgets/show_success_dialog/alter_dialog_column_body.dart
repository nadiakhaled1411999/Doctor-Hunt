import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  AlterDialogColumnBody extends StatelessWidget {
  const  AlterDialogColumnBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 480.h,
        child: Column(
          children: [
AlterDialogCircleAvatar(),
            verticalSpace(10),
AlterDialogThankYouText(),
            verticalSpace(2),
AlterDialogAppointmentSuccessfulText(),
            verticalSpace(17),
AlterDialogBookedAnAppointmentText(),
            verticalSpace(26),
AlterDialogDoneTextButton(),
            verticalSpace(20),
AlterDialogEditTextButton(),
          ],
        ),
      );
  }
}