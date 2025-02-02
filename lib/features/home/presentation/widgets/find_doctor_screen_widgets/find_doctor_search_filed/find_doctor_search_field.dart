import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorSearchField extends StatelessWidget {
  const FindDoctorSearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 40.r,
            spreadRadius: 0.r,
            offset: Offset(0, 0))
      ]),
      child: FindDoctorTextFormFiled(),
    );
  }
}
