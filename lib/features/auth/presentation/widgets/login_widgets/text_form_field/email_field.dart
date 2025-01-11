import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class EmailField extends StatelessWidget {
  final LoginCubit cubit;
  const EmailField({super.key, required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: AppTextFormField(
        hintText: AppStrings.emailHintText,
        radius: 10,
        controller: cubit.emailController,
        validator: EmailValidator.validate,
        suffixIcon: IconButton(
          icon: const Icon(Icons.check_outlined),
          onPressed: () {
            if (cubit.emailController.text.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Email is valid'),
                ),
              );
            }
          },
        ),
      ),
    );
  }

}
