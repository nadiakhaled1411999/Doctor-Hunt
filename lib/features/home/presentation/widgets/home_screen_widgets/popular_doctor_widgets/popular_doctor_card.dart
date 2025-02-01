import '../../../../../../core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class PopularDoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String imageDoctor;
  final int rating;
  const PopularDoctorCard({
    super.key,
    required this.name,
    required this.specialty,
    required this.imageDoctor,
    this.rating = 4,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
            margin: EdgeInsets.only(bottom: 5.h),
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
            padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 15.h),
            child: Column(
              children: [
                Text(name,
                    style: AppStyles.getBoldStyle(
                        color: AppColors.black, fontSize: 16)),
                Text(specialty,
                    style: AppStyles.getCustomStyle(
                      fontSize: 11,
                    )),
                StarRating(rating: rating),
              ],
            ),
          )
        ])));
  }
}
