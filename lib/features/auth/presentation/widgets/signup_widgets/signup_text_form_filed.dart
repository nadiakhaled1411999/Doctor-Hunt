// ignore_for_file: prefer_const_constructors_in_immutables
 

 import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';

class SignupTextFormFiled extends StatelessWidget {
  SignupTextFormFiled({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
   final TextEditingController phoneController = TextEditingController();
    final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController  passwordConfirmation= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText:AppStrings.nameHintText ,
              radius: 10,
              controller: nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.nameValidationMessage ;
                }
                return null;
              },
            ),
          ),
          verticalSpace(20),
          
          SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.emailHint,
                radius: 5,
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.emailValidationMessage;
                  }
                  return null;
                },
              )),
          verticalSpace(20),
           SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText:AppStrings.phoneHint ,
              radius: 10,
              controller: phoneController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.phoneValidationMessage ;
                }
                return null;
              },
            ),
          ),
          verticalSpace(20),
           SizedBox(
            width: 400.w,
            child: AppTextFormField(
              hintText:AppStrings.genderHint ,
              radius: 10,
              controller: genderController,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppStrings.genderValidationMessage ;
                }
                return null;
              },
            ),
          ),
          verticalSpace(20),
          SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.passwordHint,
                radius: 12,
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.passwordValidationMessage;
                  }
                  return null;
                },
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              )),
              verticalSpace(20), 
               SizedBox(
              width: 400.w,
              child: AppTextFormField(
                hintText: AppStrings.passwordConfirmationHint,
                radius: 12,
                controller: passwordConfirmation,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.passwordConfirmationValidation;
                  }
                  return null;
                },
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              )),
        ],
      ),
    );
  }
}
