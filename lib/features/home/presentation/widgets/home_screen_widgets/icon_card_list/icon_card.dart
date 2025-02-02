import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
 
class IconCard extends StatelessWidget {
  final Color colorCard;
  final String icon;
  const IconCard({super.key, required this.colorCard, required this.icon});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.findDoctorScreen);
      },
      child: SizedBox(
        width: 90.w,
        height: 100.h,
        child: Card(
          color: colorCard,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: CustomSVGImage(
              asset: icon,
              width: 27.w,
              height: 27.h,
            ),
          ),
        ),
      ),
    );
  }
}
