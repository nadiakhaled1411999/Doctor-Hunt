import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
class FindDoctorRowName extends StatelessWidget {
  const FindDoctorRowName({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          doctorModel.name,
          style: AppStyles.getBoldStyle(fontSize: 20),
        ),
        horizontalSpace(30),
        CustomSVGImage(
          asset: doctorModel.iconPath,
          width: 20,
          height: 20,
        )
      ],
    );
  }
}
