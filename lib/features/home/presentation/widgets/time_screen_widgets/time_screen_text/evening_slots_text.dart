import 'package:untitled/core/routing/route_export_features/export_time_screen/route_export_time_screen.dart';
class EveningSlotsText extends StatelessWidget {
  const EveningSlotsText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
     AppStrings.eveningText,
      style: AppStyles.getBoldStyle(
        fontSize: 18,
      ),
    );
  }
}
