import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

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
              style: AppStyles.getMediumStyle(
                color: AppColors.subtitleColor,
                fontWeight: FontWeight.w500,
              )),
          subtitle: Text(AppStrings.findYourDoctorText,
              style: AppStyles.getMediumStyle(color: AppColors.white)),
          trailing: CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(AppAssets.homeImage),
          ),
        ),
      ),
    );
  }
}
