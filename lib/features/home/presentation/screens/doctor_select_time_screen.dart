import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
import 'package:untitled/features/home/presentation/widgets/doctor_select_time_screen_widgets/doctor_select_time_screen_body.dart';
class DoctorSelectTimeScreen extends StatelessWidget {
  const DoctorSelectTimeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoctorSelectTimeScreenBody(),
    );
  }
}
