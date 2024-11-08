// ignore_for_file: prefer_const_constructors_in_immutables
 

 import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';

class SignupTextFormFiled extends StatelessWidget {
  SignupTextFormFiled({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400.w,
          child: AppTextFormField(
            hintText:AppStrings.nameHintText ,
            radius: 10,
            controller: nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return AppStrings.nameValidationMessage ;
              }
              return null;
            },
          ),
        ),
        verticalSpace(20),
        SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText: AppStrings.emailHint,
              radius: 5,
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.emailValidationMessage;
                }
                return null;
              },
            )),
        verticalSpace(20),
        SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText: AppStrings.passwordHint,
              radius: 12,
              controller: passwordController,
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
    );
  }
}
