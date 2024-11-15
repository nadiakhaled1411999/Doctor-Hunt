  
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/core/constants/app_strings.dart';
import 'package:untitled/core/routing/route_export.dart';
import 'core/routing/app_router.dart';


class DoctorHuntApp extends StatelessWidget {
  const DoctorHuntApp({super.key});

  
  Future<bool> _isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') != null;
  }

  @override
  Widget build(BuildContext context) {
    final DoctorHuntRouter router = DoctorHuntRouter();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return FutureBuilder<bool>(
          future: _isLoggedIn(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return MaterialApp(
                builder: EasyLoading.init(),
                debugShowCheckedModeBanner: false,
                title: AppStrings.appName,
                
                
                home: snapshot.data == true ? HomeScreen() : OnboardingPage(),
                
                onGenerateRoute: router.generateRoute,
              );
            }
          },
        );
      },
    );
  }
}
