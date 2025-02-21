
import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class  DoctorDetailsTextButton extends StatelessWidget {
  const  DoctorDetailsTextButton({super.key});
  @override
  Widget build(BuildContext context) {
    return
       AppTextButton(
          buttonText: AppStrings.findDoctorTextInTextButton,
          borderRadius: 5.sp,
          textStyle: AppStyles.getMediumStyle(fontSize: 14),
          buttonWidth: 130.w,
          buttonHeight: 38.h,
          onPressed: () {
            Navigator.pushNamed(context, Routes.doctorAppointmentScreen);
          }
    );
  }
}