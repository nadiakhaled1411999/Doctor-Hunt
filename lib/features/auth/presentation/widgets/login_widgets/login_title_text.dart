import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginTitleText extends StatelessWidget {
  const LoginTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.titleLogin,
      style: AppStyles.getBoldStyle(),
    );
  }
}
