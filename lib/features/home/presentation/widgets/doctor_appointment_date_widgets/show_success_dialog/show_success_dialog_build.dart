import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class ShowSuccessDialogBuild extends StatelessWidget {
  const ShowSuccessDialogBuild({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      content:AlterDialogColumnBody(),
    );
  }
}
