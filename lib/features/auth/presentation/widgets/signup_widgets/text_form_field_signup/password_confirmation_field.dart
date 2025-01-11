 
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class PasswordConfirmationField extends StatelessWidget {
  final SignupCubit cubit;
  final ValueNotifier<bool> isPasswordConfirmationVisible =
      ValueNotifier<bool>(false);
  PasswordConfirmationField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: ValueListenableBuilder<bool>(
        valueListenable: isPasswordConfirmationVisible,
        builder: (context, isVisible, child) {
          return AppTextFormField(
            hintText: AppStrings.passwordConfirmationHint,
            radius: 12,
            controller: cubit.passwordConfirmation,
            isObscureText: !isVisible,
            validator:PasswordValidator.validate,
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
    );
  }
}
