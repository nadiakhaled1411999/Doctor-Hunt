import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_appointment_screen_widgets/patient_selection_widgets/patient_image.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({super.key, required this.patient});
  final Map<String, dynamic> patient;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 100.w,
              height: 160.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                /*boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: Offset(0, 3), // offset the shadow
                  ),
                ],*/
                border: Border.all(
                    color: patient["image"] == null
                        ? AppColors.black
                        : AppColors.subtitleColor,
                    width: 1.5),
                color: AppColors.colorAddContainer,
              ),
              child: PatientImage(
                image: patient["image"],
              ),
            ),
          ),
          verticalSpace(8),
          Text(patient["name"], style: AppStyles.getRegularStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
