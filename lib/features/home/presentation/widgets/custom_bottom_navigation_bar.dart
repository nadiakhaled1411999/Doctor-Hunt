import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  const CustomBottomNavigationBar(
      {super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.r),
        topRight: Radius.circular(40.r),
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTap,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: AppColors.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: CircleAvatarNavigationBarItem(
                asset: AppAssets.homeIcon, isSelected: selectedIndex == 0),
            label: '',
          ),
          BottomNavigationBarItem(
            
              icon: CircleAvatarNavigationBarItem(
                  asset: AppAssets.favoritesIcon,
                  isSelected: selectedIndex == 1),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatarNavigationBarItem(
                  asset: AppAssets.readingIcon, isSelected: selectedIndex == 2),
              label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatarNavigationBarItem(
                  asset: AppAssets.messagesIcon,
                  isSelected: selectedIndex == 3),
              label: ''),
        ],
      ),
    );
  }
}
