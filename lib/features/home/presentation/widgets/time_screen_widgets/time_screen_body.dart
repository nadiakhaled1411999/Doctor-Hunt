import 'package:untitled/core/routing/route_export_features/export_time_screen/route_export_time_screen.dart';
class TimeScreenBody extends StatelessWidget {
  const TimeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackGround(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: TimeScreenColumnBody(),
        ),
      ],
    );
  }
}
