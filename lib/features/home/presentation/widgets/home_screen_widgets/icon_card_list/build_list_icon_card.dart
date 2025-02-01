import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class BuildListIconCard extends StatelessWidget {
  BuildListIconCard({super.key});
  final List<Map<String, dynamic>> iconData = [
    {'colorCard': AppColors.colorCardIcon1, 'icon': AppAssets.toothIcon},
    {'colorCard': AppColors.colorCardIcon2, 'icon': AppAssets.heartIcon},
    {'colorCard': AppColors.colorCardIcon3, 'icon': AppAssets.eyeIcon},
    {'colorCard': AppColors.colorCardIcon4, 'icon': AppAssets.bodyIcon}
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: SizedBox(
        height: 100.h,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(iconData.length, (index) {
              return IconCard(
                colorCard: iconData[index]['colorCard'],
                icon: iconData[index]['icon'],
              );
            })),
      ),
    );
  }
}
