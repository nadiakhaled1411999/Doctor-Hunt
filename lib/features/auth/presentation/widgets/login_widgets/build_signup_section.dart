
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class  BuildSignupSection extends StatelessWidget {
  const  BuildSignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.noAccountText,
                          style: AppStyles.getSemiBoldStyle() 
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.signUpScreen);

                          },
                          child: Text(
                            AppStrings.joinUsText,
                            style:  AppStyles.getSemiBoldStyle()
                          ),
                        ),
                      ],
                    );
  }
}