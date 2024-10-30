 
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class  LoginButton extends StatelessWidget {
  const  LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
                      buttonText: AppStrings.loginText,
                      textStyle: AppStyles.getMediumStyle(),
                      buttonWidth: 290,
                      buttonHeight: 54,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.HomeScreen);
                      },
                    );
  }
}