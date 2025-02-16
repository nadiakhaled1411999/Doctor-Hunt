import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';

class DoctorDetailsRowRatingSalary extends StatelessWidget {
  const DoctorDetailsRowRatingSalary({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DoctorRatingBarIndicator(),
        horizontalSpace(75),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '\$ ',
                style: AppStyles.getBoldStyle(
                    color: AppColors.primaryColor, fontSize: 13),
              ),
              TextSpan(
                  text: AppStrings.salaryText,
                  style: AppStyles.getCustomStyle(fontSize: 13)),
            ],
          ),
        ),
      ],
    );
  }
}
