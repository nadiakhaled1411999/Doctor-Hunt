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
            hintText: 'Name',
            radius: 10,
            controller: nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Name';
              }
              return null;
            },
          ),
        ),
        verticalSpace(20),
        SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText: 'Email',
              radius: 5,
              controller: emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Email';
                }
                return null;
              },
            )),
        verticalSpace(20),
        SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText: 'password',
              radius: 12,
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
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
