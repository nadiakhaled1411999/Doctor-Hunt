import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class  LoginForm extends StatelessWidget {
  const  LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
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
  }
}