import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';

import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    var c = context.read<SignupCubit>();
    return c.isLoading == false
        ? AppTextButton(
            buttonText: AppStrings.signUpText,
            textStyle: AppStyles.getMediumStyle(),
            buttonWidth: 290,
            buttonHeight: 54,
            onPressed: () {
              c.signupValidate();
            },
          )
        : const CircularProgressIndicator(
            color: AppColors.primaryColor,
          );
  }
}
