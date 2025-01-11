import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
import 'package:untitled/features/auth/presentation/widgets/login_widgets/login_form.dart';


class  LoginBlocConsumer extends StatelessWidget {
  const  LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          EasyLoading.dismiss();
          EasyLoading.showSuccess("Login Success");

          Navigator.pushNamed(context, Routes.homeScreen);
        } else if (state is LoginLoading) {
          EasyLoading.show(status: "Loading...");
        } else if (state is LoginError) {
          EasyLoading.showError(state.error.toString());
        }
      },
      builder: (context, state) {
        return LoginForm();
      },
    );
  }
}