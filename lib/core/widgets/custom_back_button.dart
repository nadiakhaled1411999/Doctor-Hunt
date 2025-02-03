import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
 
class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 33.h,
        width: 33.w,
        decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.r)),
        child: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColors.descriptionColor,
              )),
        ));
  }
}
