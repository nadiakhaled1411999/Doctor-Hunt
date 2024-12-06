 import 'package:logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/helpers/shared_preferences/secure_storage_helper.dart';
import 'package:untitled/features/auth/data/repos/auth_repos/repo_auth.dart';

part 'signup_cubit_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo signUpRepo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmation = TextEditingController();
  final GlobalKey<FormState> signupKey = GlobalKey();
  final Logger logger = Logger();

  SignupCubit(this.signUpRepo) : super(SignupInitial());

  Future<void> signupUser() async {
    emit(SignupLoading());  

    var result = await signUpRepo.signupUser(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      gender: genderController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmation.text,
    );

    result.fold((failure) {
      emit(SignupError(error: failure.errorMessage));
    }, (token) async {
      try {
        await SecureStorageHelper.saveToken(token.data!.token.toString());
        await SecureStorageHelper.saveUsername(token.data!.username.toString());

        String? savedToken = await SecureStorageHelper.getToken();
        String? savedUsername = await SecureStorageHelper.getUsername();

        if (savedToken != null && savedUsername != null) {
          logger.d('Token: $savedToken');
          logger.d('Username: $savedUsername');
          emit(SignupSuccess());
        } else {
          emit(SignupError(error: "Failed to save token and username"));
        }
      } catch (e) {
        emit(SignupError(error: e.toString()));
      }
    });
  }

  void signupValidate() {
    if (signupKey.currentState?.validate() ?? false) {
      signupUser();
    }
  }
}
