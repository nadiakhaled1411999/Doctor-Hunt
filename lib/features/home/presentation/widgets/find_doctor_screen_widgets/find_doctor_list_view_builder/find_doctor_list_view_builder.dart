import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorListViewBuilder extends StatelessWidget {
  const FindDoctorListViewBuilder({super.key, required this.doctorModelsList});
  final List<DoctorModel> doctorModelsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorModelsList.length,
          itemBuilder: (context, index) => FindDoctorBuildCard(
                doctorModel: doctorModelsList[index],
              )),
    );
  }
}
