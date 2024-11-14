import 'package:logger/logger.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepo loginRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey();
  bool isLoading = false;
  var logger = Logger();
  LoginCubit(
    this.loginRepo,
  ) : super(LoginInitial());
  Future<void> loginUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    isLoading = true;
    emit(LoginLoading());
    var result = await loginRepo.loginUser(
        email: emailController.text, password: passwordController.text);
    result.fold((failure) {
      isLoading = false;
      emit(LoginError(error: failure.errorMessage));
    }, (token) {
      isLoading = false;
      preferences.setString("token", token.data!.token.toString());
      preferences.setString("username", token.data!.username.toString());
      String? savedToken = preferences.getString("token");
      String? savedUsername = preferences.getString("username");
      if (savedToken != null && savedUsername != null) {
         logger.d('Token: $savedToken');
        logger.d('Username: $savedUsername');

        
        emit(LoginSuccess());
      }else {
      
      emit(LoginError(error: "NO Save Token and User name"));}
    });
  }

  void loginValidate() {
    if (loginKey.currentState!.validate()) {
      loginUser();
    }
  }
}
