import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';

class DoctorRatingBarIndicator extends StatelessWidget {
  const DoctorRatingBarIndicator({super.key});
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemCount: 5,
      itemSize: 17.sp,
      rating: 4,
      itemBuilder: (context, index) => Icon(Icons.star, color: AppColors.amber),
      unratedColor: AppColors.colorNoRate,
    );
  }
}
