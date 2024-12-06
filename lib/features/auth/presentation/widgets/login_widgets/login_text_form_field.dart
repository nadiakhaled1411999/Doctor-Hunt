import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _LoginTextFormFieldState createState() => _LoginTextFormFieldState();
}

class _LoginTextFormFieldState extends State<LoginTextFormField> {
  bool isPasswordVisible = false;

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
                icon: Icon(Icons.check_outlined),
                onPressed: () {
                  if (c.emailController.text.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Email is valid',)),
                    );
                  }
                },
              ),
            ),
          ),
          verticalSpace(20),
          SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText: AppStrings.passwordHintText,
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
        ],
      ),
    );
  }
}
