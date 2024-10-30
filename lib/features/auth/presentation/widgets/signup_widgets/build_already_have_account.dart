 
 import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';

class  BuildAlreadyHaveAccount extends StatelessWidget {
  const  BuildAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return          Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                           AppStrings.alreadyHaveAccountText,
                            style:AppStyles.getSemiBoldStyle()
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.LoginScreen);
                            },
                            child: Text(
                              AppStrings.logInText,
                              style:AppStyles.getSemiBoldStyle()
                            ),
                          ),
                        ],
                      );
  }
}