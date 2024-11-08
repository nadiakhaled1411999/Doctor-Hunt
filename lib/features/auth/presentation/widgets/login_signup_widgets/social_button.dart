 
 import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

 
 
class SocialButton extends StatelessWidget {
  final String textName;
  final String iconPath;

  const SocialButton(
      {super.key, required this.textName, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.12),
            offset: Offset(0, 2),
            blurRadius: 5.r,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               CustomSVGImage(
            asset:iconPath ,
            width:20.w,
            height: 20.h,
            
            
          ),
            horizontalSpace(7),
            Text(
              textName,
              style:AppStyles.getRegularStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
