import 'package:untitled/core/routing/route_export_features/export_home/export_home.dart';

class HomeBackGround extends StatelessWidget {
  const HomeBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Image.asset(
      AppAssets.bg,
      //! TODO: Rename the bg
      fit: BoxFit.cover,
    ));
  }
}
