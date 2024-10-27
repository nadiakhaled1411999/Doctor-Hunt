

import '../../../../core/routing/route_export_features/export_home/export_home.dart';

class FeatureDoctorCard extends StatelessWidget {
  final String name;
  final String salary;
  final String imageFeatuerDoctor;
  final String iconPath;
  final String rate;
  const FeatureDoctorCard({super.key,
    required this.name,
    required this.salary,
    required this.imageFeatuerDoctor,
    required this.iconPath,required this.rate});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200.h,
      width: 130.w,
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 7.h, horizontal: 7.w),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                CustomSVGImage(
                  asset: iconPath,
                  width: 10.w,
                  height: 10.h,
                ),
                Row(
                  children: [
                    CustomSVGImage(
                      asset: AppAssets.starAmber,
                      width: 10.w,
                      height: 10.h,
                    ),
                    horizontalSpace(2),
                    Text(rate,style: TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        fontFamily: 'Rubik'),),
                  ],
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage:
            AssetImage(imageFeatuerDoctor),
          ),
          verticalSpace( 7),
          Text( name, style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              fontFamily: 'Rubik')),
          RichText(text:  TextSpan(children: [

            TextSpan(text: '\$', style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
                fontFamily: 'Rubik')
            ),
            TextSpan(
                text:salary, style: TextStyle(
                color: AppColors.descriptionColor,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
                fontFamily: 'Rubik')),
          ])


          )
        ]),
      ),
    );
  }
}
