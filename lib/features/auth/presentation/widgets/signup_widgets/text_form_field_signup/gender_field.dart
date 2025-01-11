 
import '../../../../../../core/routing/route_export_features/export_auth/export_signup.dart';
class GenderField extends StatelessWidget {
  final SignupCubit cubit;
  const GenderField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: AppTextFormField(
        hintText: AppStrings.genderHint,
        radius: 10,
        controller: cubit.genderController,
        validator: (value) {
          if (value!.isEmpty) {
            return AppStrings.genderValidationMessage;
          }
          return null;
        },
      ),
    );
  }
}
