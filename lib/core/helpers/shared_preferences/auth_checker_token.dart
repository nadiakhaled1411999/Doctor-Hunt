import 'package:flutter/material.dart';
import 'package:untitled/features/home/presentation/screens/home_screen.dart';

import 'package:untitled/core/helpers/shared_preferences/secure_storage_helper.dart';
import 'package:untitled/features/onboarding/presentation/screens/onboarding.dart';

class AuthChecker extends StatelessWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: SecureStorageHelper.getToken(),
      builder: (context, snapshot) {
        
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

       
        if (snapshot.hasData && snapshot.data != null) {
          return const HomeScreen();
        } else {
          return const OnboardingPage();
        }
      },
    );
  }
}
