import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/heplers/spacing.dart';
import '../../../../core/widgets/text_form_field.dart';

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
            hintText: 'itsmemamun1@gmail.com',
            radius: 10,
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
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
              hintText: '***********',
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
