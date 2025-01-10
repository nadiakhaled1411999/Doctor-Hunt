import 'package:untitled/core/DI/dependency_injection.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginTextFormField extends StatelessWidget {
  LoginTextFormField({super.key});
  final ValueNotifier<bool> isPasswordVisible = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
  
    var loginCubit = getIt<LoginCubit>();

    return Form(
      key: loginCubit.loginKey,
      child: Column(
        children: [
          _buildEmailField(loginCubit, context),
          verticalSpace(20),
          _buildPasswordField(loginCubit, context),
        ],
      ),
    );
  }

  Widget _buildEmailField(LoginCubit cubit, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: AppTextFormField(
        hintText: AppStrings.emailHintText,
        radius: 10,
        controller: cubit.emailController,
        validator: _emailValidator,
        suffixIcon: IconButton(
          icon: const Icon(Icons.check_outlined),
          onPressed: () {
            if (cubit.emailController.text.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Email is valid'),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  String? _emailValidator(String? value) {
    if (value!.isEmpty) {
      return AppStrings.emailValidationMessage;
    }
    return null;
  }

  Widget _buildPasswordField(LoginCubit cubit, BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ValueListenableBuilder<bool>(
        valueListenable: isPasswordVisible,
        builder: (context, isVisible, child) {
          return AppTextFormField(
            hintText: AppStrings.passwordHintText,
            radius: 12,
            controller: cubit.passwordController,
            isObscureText: !isVisible,
            validator: _passwordValidator,
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
    );
  }

  String? _passwordValidator(String? value) {
    if (value!.isEmpty) {
      return AppStrings.passwordValidationMessage;
    }
    return null;
  }
}
