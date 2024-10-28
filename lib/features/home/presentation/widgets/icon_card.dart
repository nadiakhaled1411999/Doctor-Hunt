

import '../../../../core/routing/route_export_features/export_home/export_home.dart';

class IconCard extends StatelessWidget {

  final Color colorCard;  // تغيير النوع إلى Color
  final String icon;  // تغيير النوع إلى String (المسار إلى الأيقونة)

  const IconCard({super.key,required this.colorCard,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:90 .w,
      height: 100.h,
      child: Card(
        color: colorCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child:CustomSVGImage(
            asset: icon,
            width:27.w,
            height: 27.h,
          ),

        ),
      ),
    )
    ;
  }
}
