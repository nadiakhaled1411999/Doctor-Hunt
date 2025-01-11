import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class FeatureDoctorCardHeader extends StatelessWidget {
  final String iconPath;
  final String rate;

  const FeatureDoctorCardHeader({
    super.key,
    required this.iconPath,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSVGImage(
            asset: iconPath,
            width: 10.w,
            height: 10.h,
          ),
          _buildRating(rate),
        ],
      ),
    );
  }

  Widget _buildRating(String rate) {
    return Row(
      children: [
        CustomSVGImage(
          asset: AppAssets.starAmber,
          width: 10.w,
          height: 10.h,
        ),
        horizontalSpace(2),
        Text(
          rate,
          style: AppStyles.getBoldStyle(color: AppColors.black, fontSize: 12),
        ),
      ],
    );
  }
}