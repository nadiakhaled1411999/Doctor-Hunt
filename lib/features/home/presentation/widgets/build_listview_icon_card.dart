import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

class BuildListviewIconcard extends StatelessWidget {
  const BuildListviewIconcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: SizedBox(
        height: 100.h,
        child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              IconCard(
                  colorCard: AppColors.colorCardIcon1,
                  icon: AppAssets.toothIcon),
              horizontalSpace(5),
              IconCard(
                  colorCard: AppColors.colorCardIcon2,
                  icon: AppAssets.heartIcon),
              horizontalSpace(5),
              IconCard(
                  colorCard: AppColors.colorCardIcon3, icon: AppAssets.eyeIcon),
              horizontalSpace(5),
              IconCard(
                  colorCard: AppColors.colorCardIcon4,
                  icon: AppAssets.bodyIcon),
            ]),
      ),
    );
  }
}
