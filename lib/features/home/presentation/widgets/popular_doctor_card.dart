
import '../../../../core/routing/route_export_features/export_home/export_home.dart';

class PopularDoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String imageDoctor;
  const PopularDoctorCard({super.key,required this.name,required this.specialty,required this.imageDoctor});

  @override
  Widget build(BuildContext context) {
    return  Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                height: 120.h,
                width: 140.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          imageDoctor,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, bottom: 15),
                child: Column(
                  children: [
                    Text(name,
                        style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            fontFamily: 'Rubik')),
                    Text(specialty,
                        style: TextStyle(
                            color: AppColors.descriptionColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp,
                            fontFamily: 'Rubik')),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomSVGImage(
                          asset: AppAssets.starAmber,
                          width: 12.w,
                          height: 12.h,
                        ),
                        CustomSVGImage(
                          asset: AppAssets.starAmber,
                          width: 12.w,
                          height: 12.h,
                        ),CustomSVGImage(
                          asset: AppAssets.starAmber,
                          width: 12.w,
                          height: 12.h,
                        ),CustomSVGImage(
                          asset: AppAssets.starAmber,
                          width: 12.w,
                          height: 12.h,
                        ),CustomSVGImage(
                          asset: AppAssets.star,
                          width: 12.w,
                          height: 12.h,
                        ),

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}