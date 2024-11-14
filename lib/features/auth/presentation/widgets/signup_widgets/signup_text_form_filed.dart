// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';

import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';

class SignupTextFormFiled extends StatelessWidget {
  SignupTextFormFiled({super.key});

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
                controller:c.nameController ,
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
                  controller:c.emailController,
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
                hintText: AppStrings.phoneHint,
                radius: 10,
                controller:c.phoneController,
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
            verticalSpace(20),
            SizedBox(
                width: 400.w,
                child: AppTextFormField(
                  hintText: AppStrings.passwordConfirmationHint,
                  radius: 12,
                  controller:c.passwordConfirmation,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return AppStrings.passwordConfirmationValidation;
                    }
                    return null;
                  },
                  suffixIcon: Icon(
                    Icons.visibility_off,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
