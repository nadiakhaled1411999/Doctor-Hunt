

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:untitled/core/DI/dependency_injection.dart' ;
import 'package:untitled/doctor_hunt_app.dart';
 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
 await setupDependencyInjection();
   
  runApp(const DoctorHuntApp());
}
