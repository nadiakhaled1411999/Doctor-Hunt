
import 'package:untitled/core/DI/dependency_injection.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';

class SignupTextFormField extends StatelessWidget {
  SignupTextFormField({super.key});

  final ValueNotifier<bool> isPasswordVisible = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isPasswordConfirmationVisible =
      ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    var signupCubit = getIt<SignupCubit>();

    return SingleChildScrollView(
      child: Form(
        key: signupCubit.signupKey,
        child: Column(
          children: [
            SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.nameHintText,
                radius: 10,
                controller: signupCubit.nameController,
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
                controller: signupCubit.emailController,
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
                controller: signupCubit.phoneController,
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
                controller: signupCubit.genderController,
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
              child: ValueListenableBuilder<bool>(
                valueListenable: isPasswordVisible,
                builder: (context, isVisible, child) {
                  return AppTextFormField(
                    hintText: AppStrings.passwordHint,
                    radius: 12,
                    controller: signupCubit.passwordController,
                    isObscureText: !isVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.passwordValidationMessage;
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        isPasswordVisible.value = !isPasswordVisible.value;
                      },
                    ),
                  );
                },
              ),
            ),
            verticalSpace(20),
            SizedBox(
              width: 400.w,
              child: ValueListenableBuilder<bool>(
                valueListenable: isPasswordConfirmationVisible,
                builder: (context, isVisible, child) {
                  return AppTextFormField(
                    hintText: AppStrings.passwordConfirmationHint,
                    radius: 12,
                    controller: signupCubit.passwordConfirmation,
                    isObscureText: !isVisible,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.passwordConfirmationValidation;
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        isPasswordConfirmationVisible.value =
                            !isPasswordConfirmationVisible.value;
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
