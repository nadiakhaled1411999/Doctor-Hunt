import 'package:flutter/material.dart';
import 'package:untitled/core/constants/app_assets.dart';

class  BackGround extends StatelessWidget {
  const  BackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return   Positioned.fill(
              child: Image.asset(
            AppAssets.background1,
            fit: BoxFit.cover,
          ));
  }
}