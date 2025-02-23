import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';

class AlterDialogThankYouText extends StatelessWidget {
  const AlterDialogThankYouText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.thankYouText,
      style: AppStyles.getBoldStyle(fontSize: 35),
    );
  }
}
