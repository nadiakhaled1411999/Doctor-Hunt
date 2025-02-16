import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';

class DoctorDetailsRichTextServices extends StatelessWidget {
  const DoctorDetailsRichTextServices({super.key, required this.number, required this.services});
  final String number;
  final String services;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: number,
              style: AppStyles.getBoldStyle(
                  fontSize: 15, color: AppColors.primaryColor)),
          TextSpan(
            text: services,
            style: AppStyles.getCustomStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
