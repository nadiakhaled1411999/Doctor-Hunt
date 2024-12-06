import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static final SharedPreferencesHelper _instance = SharedPreferencesHelper._internal();
  SharedPreferences? _preferences;

  factory SharedPreferencesHelper() => _instance;

  SharedPreferencesHelper._internal();

  Future<void>  sharedInitialization() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static const String tokenKey = "token";
  static const String usernameKey = "username";

  Future<void> saveToken(String token) async {
    await _preferences?.setString(tokenKey, token);
  }

  Future<void> saveUsername(String username) async {
    await _preferences?.setString(usernameKey, username);
  }

  String? getToken() => _preferences?.getString(tokenKey);

  String? getUsername() => _preferences?.getString(usernameKey);
}
