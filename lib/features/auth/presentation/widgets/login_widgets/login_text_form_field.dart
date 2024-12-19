 import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginTextFormField extends StatelessWidget {
  LoginTextFormField({super.key});

  final ValueNotifier<bool> isPasswordVisible = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    var c = context.read<LoginCubit>();

    return Form(
      key: c.loginKey,
      child: Column(
        children: [
          SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText: AppStrings.emailHintText,
              radius: 10,
              controller: c.emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.emailValidationMessage;
                }
                return null;
              },
              suffixIcon: IconButton(
                icon: const Icon(Icons.check_outlined),
                onPressed: () {
                  if (c.emailController.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Email is valid'),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
          verticalSpace(20),
          SizedBox(
            width: 400.w,
            child: ValueListenableBuilder<bool>(
              valueListenable: isPasswordVisible,
              builder: (context, isVisible, child) {
                return AppTextFormField(
                  hintText: AppStrings.passwordHintText,
                  radius: 12,
                  controller: c.passwordController,
                  
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
        ],
      ),
    );
  }
}
