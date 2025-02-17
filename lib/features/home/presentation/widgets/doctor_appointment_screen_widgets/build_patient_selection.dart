import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_screen_widgets/patient_selection_widgets/patient_card.dart';
 
class BuildPatientSelection extends StatelessWidget {
  BuildPatientSelection({super.key});
  final List<Map<String, dynamic>> patients = [
    {"name": "  ", "image": null},
    {"name": "My Self", "image": AppAssets.mySelfImage},
    {"name": "My Child", "image": AppAssets.myChildImage},
    {"name": "My Self", "image": AppAssets.mySelfImage},
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: patients.length,
        itemBuilder: (context, index) {
          return PatientCard(patient: patients[index]);
        },
      ),
    );
  }
}
