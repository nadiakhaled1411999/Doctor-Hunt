
import '../../../../../../core/routing/route_export_features/export_auth/export_signup.dart';
class SignupTextFormField extends StatelessWidget {
  const SignupTextFormField({super.key});
  @override
  Widget build(BuildContext context) {
    var signupCubit = getIt<SignupCubit>();
    return SingleChildScrollView(
      child: Form(
        key: signupCubit.signupKey,
        child: Column(
          children: [
            NameField(cubit: signupCubit),
            verticalSpace(20),
            EmailField(cubit: signupCubit),
            verticalSpace(20),
            PhoneField(cubit: signupCubit),
            verticalSpace(20),
            GenderField(cubit: signupCubit),
            verticalSpace(20),
            PasswordField(cubit: signupCubit),
            verticalSpace(20),
            PasswordConfirmationField(cubit: signupCubit),
          ],
        ),
      ),
    );
  }
}
 
