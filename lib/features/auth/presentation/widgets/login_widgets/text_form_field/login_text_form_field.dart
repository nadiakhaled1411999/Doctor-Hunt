import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({super.key});
  @override
  Widget build(BuildContext context) {
    var loginCubit = getIt<LoginCubit>();
    return Form(
      key: loginCubit.loginKey,
      child: Column(
        children: [
          EmailField(cubit: loginCubit),
          verticalSpace(20),
          PasswordField(cubit: loginCubit),
        ],
      ),
    );
  }
}
