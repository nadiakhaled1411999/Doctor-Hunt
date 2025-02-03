
import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class  DoctorSelectImage extends StatelessWidget {
  const  DoctorSelectImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
                AppAssets.selectDoctorImage,
                height: 85.h,
                width: 83.w,
              );
  }
}