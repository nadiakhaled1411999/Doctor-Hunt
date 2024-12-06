import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  static const _storage = FlutterSecureStorage();

  static const String tokenKey = "token";
  static const String usernameKey = "username";

  static Future<void> saveToken(String token) async {
    await _storage.write(key: tokenKey, value: token);
  }

  static Future<void> saveUsername(String username) async {
    await _storage.write(key: usernameKey, value: username);
  }

  static Future<String?> getToken() async {
    return await _storage.read(key: tokenKey);
  }

  static Future<String?> getUsername() async {
    return await _storage.read(key: usernameKey);
  }
}
