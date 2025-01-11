import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class SignupTitleText extends StatelessWidget {
  const SignupTitleText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.titleSignUp,
      style: AppStyles.getBoldStyle(),
    );
  }
}
