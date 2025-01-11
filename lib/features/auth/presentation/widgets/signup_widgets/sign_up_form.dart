
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            SignupBackGround(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SignupTitleText(),
                      verticalSpace(10),
                      SignupDescriptionText(),
                      verticalSpace(40),
                      BuildSocialButtons(),
                      verticalSpace(40),
                      SignupTextFormField(),
                      BuildAgreeTermsText(),
                      verticalSpace(40),
                      SignupButton(),
                      verticalSpace(10),
                      BuildAlreadyHaveAccount(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
  }
}