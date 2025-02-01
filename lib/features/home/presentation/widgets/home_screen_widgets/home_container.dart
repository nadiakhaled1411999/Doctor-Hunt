import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140.h,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.gradientColor1, AppColors.gradientColor2]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
            bottomRight: Radius.circular(40.r),
          )),
      child: Center(
        child: ListTile(
          title: Text(AppStrings.hiText,
              style: AppStyles.getCustomStyle(
                color: AppColors.subtitleColor,
                fontSize: 18,
              )),
          subtitle: Text(AppStrings.findYourDoctorText,
              style: AppStyles.getMediumStyle()),
          trailing: CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(AppAssets.homeImage),
          ),
        ),
      ),
    );
  }
}
