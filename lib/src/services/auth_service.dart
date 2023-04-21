import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  static const String _tokenKey = "TOKEN";

  static Future<void> setToken(String token) async {

    final _storage = const FlutterSecureStorage();

    await _storage.write(key: _tokenKey, value: token);
  }

  static Future<String?> getToken() async {
    final _storage = const FlutterSecureStorage();

    return _storage.read(key: _tokenKey);
  }

  static Future<void> clear() async{

    final _storage = FlutterSecureStorage();

    await _storage.delete(key: _tokenKey);
  }
}
