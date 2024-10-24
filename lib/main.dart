// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/doctor_hunt_app.dart';
import 'package:untitled/features/onboarding/presentation/screens/onboarding.dart';
 

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const DoctorHuntApp());
}

