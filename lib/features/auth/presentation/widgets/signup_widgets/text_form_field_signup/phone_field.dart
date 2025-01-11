
import '../../../../../../core/routing/route_export_features/export_auth/export_signup.dart';
class PhoneField extends StatelessWidget {
  final SignupCubit cubit;
  const PhoneField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: AppTextFormField(
        hintText: AppStrings.phoneHint,
        radius: 10,
        controller: cubit.phoneController,
        validator: (value) {
          if (value!.isEmpty) {
            return AppStrings.phoneValidationMessage;
          }
          return null;
        },
      ),
    );
  }
}
 