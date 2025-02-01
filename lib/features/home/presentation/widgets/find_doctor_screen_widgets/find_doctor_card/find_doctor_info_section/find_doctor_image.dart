import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';

class FindDoctorImage extends StatelessWidget {
  const FindDoctorImage({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      doctorModel.imageDoctor,
      width: 110.w,
      height: 110.h,
    );
  }
}
