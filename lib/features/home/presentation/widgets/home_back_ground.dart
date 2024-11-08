import 'package:untitled/core/routing/route_export_features/export_home_screen/export_home_screen.dart';

class HomeBackGround extends StatelessWidget {
  const HomeBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Image.asset(
      AppAssets.background1,
      
      //Done
      fit: BoxFit.cover,
    ));
  }
}
