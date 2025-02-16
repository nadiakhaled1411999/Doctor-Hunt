import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';

class  DoctorDetailsImage extends StatelessWidget {
  const  DoctorDetailsImage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Image.asset(
                AppAssets.doctorDetailsImage,
                height: 85.h,
                width: 83.w,
              );
  }
}