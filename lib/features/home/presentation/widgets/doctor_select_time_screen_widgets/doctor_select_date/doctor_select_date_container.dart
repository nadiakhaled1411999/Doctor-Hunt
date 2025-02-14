import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectDateContainer extends StatelessWidget {
  DoctorSelectDateContainer({super.key, required this.doctorSelectDateModel});
  final DoctorSelectDateModel doctorSelectDateModel;
  final ValueNotifier<bool> isSelected = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected.value = !isSelected.value;
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ValueListenableBuilder<bool>(
          valueListenable: isSelected,
          builder: (context, value, child) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: value ? AppColors.primaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(7.r),
                border: Border.all(
                  color: AppColors.transparent,
                  width: 1.5,
                ),
              ),
              child: DoctorSelectColumnInContainer(
                doctorSelectDateModel: doctorSelectDateModel,
                isSelected: value,
              ),
            );
          },
        ),
      ),
    );
  }
}
