import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_build_circle.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_card/find_Doctor_Booking_section/find_doctor_booking_section.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_card/find_doctor_info_section/find_doctor_image.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_card/find_doctor_info_section/find_doctor_info_section.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_text_button.dart';

class FindDoctorBuildCard extends StatelessWidget {
  const FindDoctorBuildCard({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 230.h,
        width: double.infinity,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          elevation: 3,
          color: AppColors.white,
          margin: EdgeInsets.symmetric(vertical: 8.h),
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              children: [
                FindDoctorInfoSection(doctorModel: doctorModel),
                FindDoctorBookingSection(doctorModel: doctorModel),
               
              ],
            ),
          ),
        ));
  }
}
