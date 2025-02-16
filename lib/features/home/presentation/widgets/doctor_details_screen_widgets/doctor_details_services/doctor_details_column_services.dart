import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
class DoctorDetailsColumnServices extends StatelessWidget {
  const DoctorDetailsColumnServices({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.servicesText,
          style: AppStyles.getBoldStyle(fontSize: 18),
        ),
        verticalSpace(10),
        DoctorDetailsRichTextServices(
            number: AppStrings.number1Text, services: AppStrings.services1Text),
        verticalSpace(15),
        DoctorDetailsDivider(),
        verticalSpace(15),
        DoctorDetailsRichTextServices(
            number: AppStrings.number2Text, services: AppStrings.services2Text),
        verticalSpace(15),
        DoctorDetailsDivider(),
        verticalSpace(15),
        DoctorDetailsRichTextServices(
            number: AppStrings.number3Text, services: AppStrings.services3Text),
        verticalSpace(15),
        DoctorDetailsMap(),
      ],
    );
  }
}
