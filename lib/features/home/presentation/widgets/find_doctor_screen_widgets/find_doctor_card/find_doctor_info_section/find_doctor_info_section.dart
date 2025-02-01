import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_build_circle.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_card/find_doctor_info_section/find_doctor_image.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_text_button.dart';

class FindDoctorInfoSection extends StatelessWidget {
  const FindDoctorInfoSection({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FindDoctorImage(doctorModel: doctorModel),
          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              ),
              verticalSpace(5),
              Text(doctorModel.specialty,
                  style: AppStyles.getRegularStyle(
                    color: AppColors.primaryColor,
                  )),
              verticalSpace(5),
              Text( doctorModel.experience,
                  style: AppStyles.getCustomStyle(fontSize: 14)),
              verticalSpace(6),
              Row(
                children: [
                  FindDoctorBuildCircle(),
                  horizontalSpace(3),
                  Text(
                    doctorModel.rating,
                    style: AppStyles.getCustomStyle(),
                  ),
                  horizontalSpace(22),
                  FindDoctorBuildCircle(),
                  horizontalSpace(3),
                  Text(
                    doctorModel.patientStories,
                    style: AppStyles.getCustomStyle(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
