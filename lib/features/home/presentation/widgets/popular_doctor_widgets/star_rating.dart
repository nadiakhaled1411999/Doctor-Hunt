import '../../../../../core/routing/route_export_features/export_home_screen/export_home_screen.dart';
class StarRating extends StatelessWidget {
  final int rating;
  const StarRating({super.key, required this.rating});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return CustomSVGImage(
          asset: index < rating ? AppAssets.starAmber : AppAssets.star,
          width: 12.w,
          height: 12.h,
        );
      }),
    );
  }
}
