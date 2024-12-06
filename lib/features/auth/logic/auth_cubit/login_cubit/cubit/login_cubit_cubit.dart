import 'package:logger/logger.dart';

import 'package:untitled/core/helpers/shared_preferences/secure_storage_helper.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepo loginRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey();
  var logger = Logger();

  LoginCubit(this.loginRepo) : super(LoginInitial());

  Future<void> loginUser() async {
    emit(LoginLoading());

    var result = await loginRepo.loginUser(
      email: emailController.text,
      password: passwordController.text,
    );

    result.fold((failure) {
      emit(LoginError(error: failure.errorMessage));
    }, (token) async {
      try {
        await SecureStorageHelper.saveToken(token.data!.token.toString());
        await SecureStorageHelper.saveUsername(token.data!.username.toString());

        String? savedToken = await SecureStorageHelper.getToken();
        String? savedUsername = await SecureStorageHelper.getUsername();

        if (savedToken != null && savedUsername != null) {
          logger.d('Token: $savedToken');
          logger.d('Username: $savedUsername');
          emit(LoginSuccess());
        } else {
          emit(LoginError(error: "Failed to save token and username"));
        }
      } catch (e) {
        emit(LoginError(error: e.toString()));
      }
    });
  }

  void loginValidate() {
    if (loginKey.currentState?.validate() ?? false) {
      loginUser();
    }
  }
}
