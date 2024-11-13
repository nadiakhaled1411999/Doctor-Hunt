import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    var c = context.read<LoginCubit>();
    //var loginCubit = LoginCubit.get(context);
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSucess) {
          EasyLoading.dismiss();
          EasyLoading.showSuccess("login sucess");
          Navigator.pushNamed(context, Routes.homeScreen);
        } else if (state is LoginLoading) {
          EasyLoading.show(status: "LoginLoading");
        } else if (state is LoginError) {
          EasyLoading.showError(state.error.toString());
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            LoginBackGround(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LoginTitleText(),
                      verticalSpace(10),
                      LoginDescriptionText(),
                      verticalSpace(40),
                      BuildSocialButtons(),
                      verticalSpace(40),
                      LoginTextFormField(),
                      verticalSpace(30),
                      LoginButton(),
                      LoginForgotPasswordButton(),
                      verticalSpace(45),
                      BuildSignupSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
