import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class EmailValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.emailValidationMessage;
    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(value)) {
      return "Please enter a valid email address";
    }
    return null;
  }
}
