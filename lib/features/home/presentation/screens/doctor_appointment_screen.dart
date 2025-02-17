import 'package:untitled/core/routing/route_export_features/export_doctor_appointment_screen/route_doctor_appointment_screen.dart';
 
class DoctorAppointmentScreen extends StatelessWidget {
  DoctorAppointmentScreen({super.key});

  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, value, child) {
            return CustomBottomNavigationBar(
              selectedIndex: value,
              onTap: (index) {
                selectedIndex.value = index;
              },
            );
          },
        ),
        body: DoctorAppointmentScreenBody());
  }
}
