
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';


class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({super.key});
  
  @override
  Widget build(BuildContext context) {
     var c=context.read<LoginCubit>();
    return  Form(
      key: c.loginKey,
      child: Column(
        children: [
          SizedBox(
            width: 400.w,
            child: AppTextFormField(
              
              hintText: AppStrings.emailHintText,
              radius: 10,
              controller:c.emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.emailValidationMessage;
                }
                return null;
              },
              suffixIcon: Icon(
                Icons.check_outlined,
              ),
            ),
          ),
          verticalSpace(20),
          SizedBox(
              width: 400.w,
              child: AppTextFormField(
                
                
                hintText: AppStrings.passwordHintText,
                radius: 12,
                controller:c.passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.passwordValidationMessage;
                  }
                  return null;
                },
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              )),
        ],
      ),
    );
  }
}
