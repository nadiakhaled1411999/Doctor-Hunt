

import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

class  BuildPopularDoctorText extends StatelessWidget {
  const  BuildPopularDoctorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings.popularDoctorText,
                          style: AppStyles.getSemiBoldStyle(color: AppColors.black,fontSize:18 ),),
                      Text(AppStrings.seeAllText,
                          style:  AppStyles.getRegularStyle(fontSize: 12,fontWeight: FontWeight.w500)),
                    ],
                  ),
                );
  }
}