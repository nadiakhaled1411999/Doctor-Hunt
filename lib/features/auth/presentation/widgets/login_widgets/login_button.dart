 

import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoginLoading) {
          return const CircularProgressIndicator(
            color: AppColors.primaryColor,
          );
        }
        return AppTextButton(
          buttonText: AppStrings.loginText,
          textStyle: AppStyles.getMediumStyle(),
          buttonWidth: 290,
          buttonHeight: 54,
          onPressed: () {
            context.read<LoginCubit>().loginValidate();
          },
        );
      },
    );
  }
}
