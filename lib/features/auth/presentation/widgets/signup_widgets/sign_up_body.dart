import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';

class SignUpBody extends StatelessWidget{
  const SignUpBody({super.key});

  

  
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
        return Stack(
          children: [
            SignupBackGround(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SignupTitleText(),
                      verticalSpace(10),
                      SignupDescriptionText(),
                      verticalSpace(40),
                      BuildSocialButtons(),
                      verticalSpace(40),
                      SignupTextFormFiled(),
                      BuildAgreeTermsText(),
                      verticalSpace(40),
                      SignupButton(),
                      verticalSpace(10),
                      BuildAlreadyHaveAccount(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
