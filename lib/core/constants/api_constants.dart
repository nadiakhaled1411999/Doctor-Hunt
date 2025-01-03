class ApiConstants {
  ApiConstants._();
  static final ApiConstants _instance = ApiConstants._();
  factory ApiConstants() => _instance;

  static final String baseUrl = "https://vcare.integration25.com/api";
  static final String endPointLogin = '/auth/login';
  static final String endPointSignup = '/auth/register';
}
