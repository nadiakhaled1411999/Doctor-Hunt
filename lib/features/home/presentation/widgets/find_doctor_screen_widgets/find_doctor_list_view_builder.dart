import 'package:flutter/material.dart';
import 'package:untitled/core/routing/route_export_features/find_doctor_export/export_find_doctor_screen.dart';
import 'package:untitled/features/home/presentation/widgets/find_doctor_screen_widgets/find_doctor_card/find_doctor_build_card.dart';

class FindDoctorListViewBuilder extends StatelessWidget {
  const FindDoctorListViewBuilder({super.key});
  final List<DoctorModel> doctorModelsList = const [
    DoctorModel(
        imageDoctor: AppAssets.findDoctor1,
        name: "Dr.Shruti Kedia",
        iconPath: AppAssets.heartRed,
        specialty: "Tooths Dentist",
        experience: "7 Years experience",
        rating: "87%",
        patientStories: "69 Patient Stories",
        nextAvailableTime: "10:00",
        appointmentTime: "AM tomorrow"),
         DoctorModel(
        imageDoctor: AppAssets.findDoctor2,
        name: "Dr.Watamaniuk",
        iconPath: AppAssets.heart,
        specialty: "Tooths Dentist",
        experience: "9 Years experience",
        rating: "74%",
        patientStories: "78 Patient Stories",
        nextAvailableTime: "12:00",
        appointmentTime: "AM tomorrow"),
        DoctorModel(
        imageDoctor: AppAssets.findDoctor3,
        name: "Dr.Crownover",
        iconPath: AppAssets.heartRed,
        specialty: "Tooths Dentist",
        experience: "5 Years experience",
        rating: "59%",
        patientStories: "86 Patient Stories",
        nextAvailableTime: "11:00",
        appointmentTime: "AM tomorrow")
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
                    child: ListView.builder(
                      itemCount: doctorModelsList.length,
                      itemBuilder: (context, index) =>
                      FindDoctorBuildCard(doctorModel: doctorModelsList[index],) 
                      ),
                    );
  }
}
