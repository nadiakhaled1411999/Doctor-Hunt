
import '../../../../../../core/routing/route_export_features/export_auth/export_signup.dart';
class EmailField extends StatelessWidget {
  final SignupCubit cubit;
  const EmailField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: AppTextFormField(
        hintText: AppStrings.emailHint,
        radius: 5,
        controller: cubit.emailController,
        validator:EmailValidator.validate,
      ),
    );
  }
}
