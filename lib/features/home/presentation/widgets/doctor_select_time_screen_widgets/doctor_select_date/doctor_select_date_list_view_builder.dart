 import 'package:untitled/core/routing/route_export_features/doctor_select_time_screen/export_doctor_select_screen.dart';
class DoctorSelectDateListViewBuilder extends StatelessWidget {
  const DoctorSelectDateListViewBuilder({super.key, required this.doctorSelectDateModelList});

  final List<DoctorSelectDateModel> doctorSelectDateModelList;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: doctorSelectDateModelList.length,
      itemBuilder:(context,index)=>DoctorSelectDateContainer(doctorSelectDateModel: doctorSelectDateModelList[index],) ,
    );
  }
}
