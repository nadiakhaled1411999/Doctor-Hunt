class ApiConstants {
  ApiConstants._();
  static final ApiConstants _instance = ApiConstants._();
  factory ApiConstants() => _instance;

  final String baseUrl = "https://vcare.integration25.com/api";
  final String endPointLogin = '/auth/login';
  final String endPointSignup ='/auth/register';
}
