import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class CircleAvatarNavigationBarItem extends StatelessWidget {
  final String asset;
  final bool isSelected;
  const CircleAvatarNavigationBarItem(
      {super.key, required this.asset, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 25.r,
        backgroundColor: isSelected ? AppColors.primaryColor : AppColors.white,
        child: CustomSVGImage(
          asset: asset,
          width: 20,
          height: 20,
          color: isSelected ? AppColors.white : AppColors.iconBarColor,
        ));
  }
}
