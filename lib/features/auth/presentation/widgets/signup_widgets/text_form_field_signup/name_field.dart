
import '../../../../../../core/routing/route_export_features/export_auth/export_signup.dart';
class NameField extends StatelessWidget {
  final SignupCubit cubit;
  const NameField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: AppTextFormField(
        hintText: AppStrings.nameHintText,
        radius: 10,
        controller: cubit.nameController,
        validator: (value) {
          if (value!.isEmpty) {
            return AppStrings.nameValidationMessage;
          }
          return null;
        },
      ),
    );
  }
}
