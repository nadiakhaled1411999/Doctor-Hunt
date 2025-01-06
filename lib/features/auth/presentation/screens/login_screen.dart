import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(
          //! TODO: Use DependencyInjection (get it package)
            LoginRepoImplement(apiServices: ApiServices(dio: Dio()))),
        child: Scaffold(
          body: LoginBody(),
        ));
  }
}
