import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:untitled/features/auth/data/repos/auth_repos/repo_auth.dart';

import '../../../../../../core/routing/route_export_features/export_auth/export_signup.dart';

part 'signup_cubit_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignUpRepo signUpRepo;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmation = TextEditingController();
  GlobalKey<FormState> signupKey = GlobalKey();
  bool isLoading = false;

  SignupCubit(
    this.signUpRepo,
  ) : super(SignupInitial());
  Future<void> signupUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    isLoading = true;
    emit(SignupLoading());
    var result = await signUpRepo.signupUser(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: genderController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmation.text);
    result.fold((failure) {
      isLoading = false;
      emit(SignupError(error: failure.errorMessage));
    }, (token) {
      preferences.setString("token", token.data!.token.toString());
      preferences.setString("username", token.data!.username.toString());
      emit(SignupSuccess());
    });
  }

  void signupValidate() {
    if (signupKey.currentState!.validate()) {
      signupUser();
    }
  }
}
