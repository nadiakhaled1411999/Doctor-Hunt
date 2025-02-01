import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_text_button.dart';

class FindDoctorBookingSection extends StatelessWidget {
  const FindDoctorBookingSection({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                 AppStrings.nextAvailable,
                style: AppStyles.getBoldStyle(
                    color: AppColors.primaryColor, fontSize: 15),
              ),
              verticalSpace(5.h),
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: doctorModel.nextAvailableTime, style: AppStyles.getRegularStyle()),
                TextSpan(text: doctorModel.appointmentTime, style: AppStyles.getCustomStyle())
              ]))
            ],
          ),
          horizontalSpace(50),
          FindDoctorTextButton(),
        ],
      ),
    );
  }
}
