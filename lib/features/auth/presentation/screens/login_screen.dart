import 'package:untitled/core/DI/dependency_injection.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: Scaffold(
          body: LoginBody(),
        ));
  }
}
