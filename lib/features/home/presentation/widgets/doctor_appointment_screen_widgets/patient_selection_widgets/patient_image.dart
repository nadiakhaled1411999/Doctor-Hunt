import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class PatientImage extends StatelessWidget {
  final String? image;
  const PatientImage({super.key, this.image});
  @override
  Widget build(BuildContext context) {
    return image != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular(6.r),
            child: Image.asset(image!, fit: BoxFit.cover),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, size: 40.sp, color: AppColors.primaryColor),
              Text(AppStrings.addText,
                  style: AppStyles.getRegularStyle(
                      fontSize: 16, color: AppColors.primaryColor)),
            ],
          );
  }
}
