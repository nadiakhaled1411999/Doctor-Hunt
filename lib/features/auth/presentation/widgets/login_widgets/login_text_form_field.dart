 
 
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class LoginTextFormField extends StatelessWidget {
  LoginTextFormField({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400.w,
          child: AppTextFormField(
            hintText: AppStrings.emailHintText,
            radius: 10,
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.emailValidationMessage;
              }
              return null;
            },
            suffixIcon:   Icon(
              Icons.check_outlined,
            ),
          ),
        ),
        verticalSpace(20),
        SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText:AppStrings.passwordHintText,
              radius: 12,
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.passwordValidationMessage;
                }
                return null;
              },
              suffixIcon:  Icon(
                Icons.visibility_off,
              ),
            )),
      ],
    );
  }
}


 

