import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_screen_widgets/build_patient_selection.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_screen_widgets/patient_app_text_button.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_screen_widgets/patient_form_fields.dart';

class AppointmentScreenColumnBody extends StatelessWidget {
  const AppointmentScreenColumnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildHeader(headerText: AppStrings.appointmentText),
            verticalSpace(20),
            DoctorDetailsBuildCard(
              showButton: false,
            ),
            verticalSpace(25),
            Text(
              AppStrings.appointmentForText,
              style: AppStyles.getBoldStyle(fontSize: 18),
            ),
            verticalSpace(25),
            PatientFormFields(),
            Text(
              AppStrings.whoIsThisPatientText,
              style: AppStyles.getBoldStyle(fontSize: 18),
            ),
            verticalSpace(20),
            BuildPatientSelection(),
            verticalSpace(20),
            PatientAppTextButton(),
            verticalSpace(25)
          ],
        ),
      ),
    );
  }
}
