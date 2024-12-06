import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';

class SignupTextFormField extends StatefulWidget {
  const SignupTextFormField({super.key});

  @override
  State<SignupTextFormField> createState() => _SignupTextFormFieldState();
}

class _SignupTextFormFieldState extends State<SignupTextFormField> {
  bool isPasswordVisible = false;
  bool isPasswordConfirmationVisible = false;

  @override
  Widget build(BuildContext context) {
    var c = context.read<SignupCubit>();

    return SingleChildScrollView(
      child: Form(
        key: c.signupKey,
        child: Column(
          children: [
            SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.nameHintText,
                radius: 10,
                controller: c.nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.nameValidationMessage;
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
                controller: c.emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.emailValidationMessage;
                  }
                  return null;
                },
              ),
            ),
            verticalSpace(20),
            SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.phoneHint,
                radius: 10,
                controller: c.phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.phoneValidationMessage;
                  }
                  return null;
                },
              ),
            ),
            verticalSpace(20),
            SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.genderHint,
                radius: 10,
                controller: c.genderController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.genderValidationMessage;
                  }
                  return null;
                },
              ),
            ),
            verticalSpace(20),
            SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.passwordHint,
                radius: 12,
                controller: c.passwordController,
                isObscureText: !isPasswordVisible,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.passwordValidationMessage;
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            verticalSpace(20),
            SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.passwordConfirmationHint,
                radius: 12,
                controller: c.passwordConfirmation,
                isObscureText:
                    !isPasswordConfirmationVisible, 
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.passwordConfirmationValidation;
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordConfirmationVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordConfirmationVisible =
                          !isPasswordConfirmationVisible;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
