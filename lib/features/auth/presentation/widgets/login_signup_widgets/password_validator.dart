import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
class PasswordValidator {
 static String? validate(String? value) {
  if (value == null || value.isEmpty) {
    return AppStrings.passwordValidationMessage; 
  } else if (value.length < 8) {
    return "Password must be at least 8 characters long";
  }
  return null; 
}
}