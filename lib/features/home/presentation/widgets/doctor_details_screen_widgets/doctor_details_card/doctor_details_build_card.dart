import 'package:untitled/core/routing/route_export_features/export_doctor_details_screen/route_doctor_details_screen.dart';

class DoctorDetailsBuildCard extends StatelessWidget {
  final bool showButton; //!
  const DoctorDetailsBuildCard({super.key, this.showButton = true});
  @override
  Widget build(BuildContext context) {
    return  
       Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        elevation: 2,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DoctorDetailsRowBodyCard(),
              verticalSpace(14),
              if (showButton) Center(child: DoctorDetailsTextButton()), //!
            ],
          ),
        ),
      
    );
  }
}
