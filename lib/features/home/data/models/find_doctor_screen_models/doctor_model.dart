// ignore_for_file: public_member_api_docs, sort_constructors_first
class DoctorModel {
  final String imageDoctor;
  final String name;
  final String iconPath;
  final String specialty;
  final String experience;
  final String rating;
  final String patientStories;
  final String nextAvailableTime;
  final String appointmentTime;
  const DoctorModel(
   { 
    required this.imageDoctor,
    required this.name,
     required this.iconPath, 
    required this.specialty,
    required this.experience,
    required this.rating,
    required this.patientStories,
    required this.nextAvailableTime,
     required this.appointmentTime, 
  });
}
