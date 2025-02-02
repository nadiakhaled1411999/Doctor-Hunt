import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/core/constants/app_strings.dart';
import 'package:untitled/core/helpers/shared_preferences/auth_checker_token.dart';
import 'package:untitled/core/routing/route_export.dart';
import 'package:untitled/features/home/presentation/screens/find_doctor_screen.dart';
 
import 'core/routing/app_router.dart';
class DoctorHuntApp extends StatelessWidget {
  const DoctorHuntApp({super.key});
  @override
  Widget build(BuildContext context) {
    final DoctorHuntRouter router = DoctorHuntRouter();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          builder: EasyLoading.init(),
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          home:const AuthChecker(),
          onGenerateRoute: router.generateRoute,
        );
      },
    );
  }
}
 