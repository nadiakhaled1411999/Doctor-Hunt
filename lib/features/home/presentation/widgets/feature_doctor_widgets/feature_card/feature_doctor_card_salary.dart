import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class FeatureDoctorCardSalary extends StatelessWidget {
  final String salary;
  const FeatureDoctorCardSalary({
    super.key,
    required this.salary,
  });
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '\$',
            style: AppStyles.getBoldStyle(
                color: AppColors.primaryColor, fontSize: 12),
          ),
          TextSpan(
            text: salary,
            style: AppStyles.getBoldStyle(
                color: AppColors.descriptionColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}