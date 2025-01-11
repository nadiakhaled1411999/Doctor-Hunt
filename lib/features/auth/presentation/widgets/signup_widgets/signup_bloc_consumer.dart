import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
import 'package:untitled/features/auth/presentation/widgets/signup_widgets/sign_up_form.dart';

class SignUpBlocConsumer extends StatelessWidget {
  const SignUpBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          EasyLoading.dismiss();
          EasyLoading.showSuccess("SignUp Success");
          Navigator.pushNamed(context, Routes.homeScreen);
        } else if (state is SignupLoading) {
          EasyLoading.show(status: "Loading...");
        } else if (state is SignupError) {
          EasyLoading.showError(state.error.toString());
        }
      },
      builder: (context, state) {
        return SignUpForm();
      },
    );
  }
}