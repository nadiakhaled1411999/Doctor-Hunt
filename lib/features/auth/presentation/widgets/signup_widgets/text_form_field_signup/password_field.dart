 
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class PasswordField extends StatelessWidget {
  final SignupCubit cubit;
  final ValueNotifier<bool> isPasswordVisible = ValueNotifier<bool>(false);
  PasswordField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: ValueListenableBuilder<bool>(
        valueListenable: isPasswordVisible,
        builder: (context, isVisible, child) {
          return AppTextFormField(
            hintText: AppStrings.passwordHint,
            radius: 12,
            controller: cubit.passwordController,
            isObscureText: !isVisible,
            validator:  PasswordValidator.validate,
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
}
