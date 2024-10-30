

import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class  LoginForgotPasswordButton extends StatelessWidget {
  const  LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.forgotText,
                        style:  AppStyles.getSemiBoldStyle()
                      ),
                    );
  }
}