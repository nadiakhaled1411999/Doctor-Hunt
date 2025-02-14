import 'package:untitled/core/routing/route_export_features/export_time_screen/route_export_time_screen.dart';
class AfternoonSlotsText extends StatelessWidget {
  const AfternoonSlotsText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.afternoonText,
      style: AppStyles.getBoldStyle(
        fontSize: 18,
      ),
    );
  }
}
