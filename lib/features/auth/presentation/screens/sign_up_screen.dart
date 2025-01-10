import 'package:untitled/core/DI/dependency_injection.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
 
import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>  getIt<SignupCubit>(),
      child: Scaffold(
          body: SafeArea(
        child: SignUpBody(),
      )),
    );
  }
}
