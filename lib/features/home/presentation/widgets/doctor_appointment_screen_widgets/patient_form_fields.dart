import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_screen/route_doctor_appointment_screen.dart';
class  PatientFormFields extends StatelessWidget {
  const  PatientFormFields({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(children: [
         AppTextFormField(
                      hintText: AppStrings.patientNameTex,
                      radius: 10,
                      fillColor: AppColors.transparentLime,
                      enabledBorderSideColor: AppColors.transparent,
                      contentPadding: EdgeInsets.all(20),
                    ),
                    verticalSpace(20),
                    AppTextFormField(
                      hintText: AppStrings.contactNumberText,
                      radius: 10,
                      fillColor: AppColors.transparentLime,
                      enabledBorderSideColor: AppColors.transparent,
                      contentPadding: EdgeInsets.all(20),
                    ),
                    verticalSpace(25),
      
      ],),
    );
  }
}