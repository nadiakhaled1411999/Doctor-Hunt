import '../../../../../core/routing/route_export_features/export_home_screen/export_home_screen.dart';

//! TODO: Try to refactor this screen into something more smaller

class FeatureDoctorCard extends StatelessWidget {
  final String name;
  final String salary;
  final String imageFeatureDoctor;
  final String iconPath;
  final String rate;

  const FeatureDoctorCard({
    super.key,
    required this.name,
    required this.salary,
    required this.imageFeatureDoctor,
    required this.iconPath,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.35,
      child: Card(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
            _buildHeader(),
            _buildAvatar(),
            verticalSpace(14),
            _buildName(),
            _buildSalary(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSVGImage(
            asset: iconPath,
            width: 10.w,
            height: 10.h,
          ),
          _buildRating(),
        ],
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        CustomSVGImage(
          asset: AppAssets.starAmber,
          width: 10.w,
          height: 10.h,
        ),
        horizontalSpace(2),
        Text(
          rate,
          style: AppStyles.getBoldStyle(color: AppColors.black, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 40.r,
      backgroundImage: AssetImage(imageFeatureDoctor),
    );
  }

  Widget _buildName() {
    return Text(
      name,
      style: AppStyles.getBoldStyle(color: AppColors.black, fontSize: 18),
    );
  }

  Widget _buildSalary() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '\$',
            style: AppStyles.getBoldStyle(
                color: AppColors.primaryColor, fontSize: 12),
          ),
          TextSpan(
            text: salary,
            style: AppStyles.getBoldStyle(
                color: AppColors.descriptionColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
