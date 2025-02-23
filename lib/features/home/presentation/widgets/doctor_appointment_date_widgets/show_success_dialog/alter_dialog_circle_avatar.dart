
import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_date_screen/route_doctor_appointment_date_screen.dart';
class  AlterDialogCircleAvatar extends StatelessWidget {
  const  AlterDialogCircleAvatar({super.key});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                backgroundColor: AppColors.colorCircleLike,
                radius: 70.r,
                child: Image.asset(AppAssets.likeImage,
                    height: 60.h, width: 60.w));
  }
}