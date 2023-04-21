import 'package:dio/dio.dart';
import 'package:flutter_auth_app/src/services/auth_service.dart';

import 'dio_interceptor.dart';

class AuthApiProvider {
  final _dio = Dio();

  AuthApiProvider() {
    _dio.interceptors.add(DioInterceptor());
  }

  Future<void> registerUser() async {
    const String _registerUrl = 'http://localhost:3000/register';

    var _data = {"email": "olivier242222@mail.com", "password": "bestPassw0rd"};

    final response = await _dio.post(
      _registerUrl,
      data: _data,
    );

    if (response.statusCode == 201) {
      await AuthService.setToken(response.data['accessToken']);
      //print(response.data['accessToken']);
    } else {
      print('Произошло ошибка:  ${response.data}');
    }
  }

  Future<void> loginUser() async {
    const String _loginUrl = 'http://localhost:3000/login';

    var _data = {"email": "olivier242222@mail.com", "password": "bestPassw0rd"};

    final response = await _dio.post(
      _loginUrl,
      data: _data,
    );

    if (response.statusCode == 200) {
      await AuthService.setToken(response.data['accessToken']);
      print(response.data['accessToken']);
    } else {
      print('Произошло ошибка:  ${response.data}');
    }
  }

  Future<dynamic> getData() async {
    const String _loginUrl = 'http://localhost:3000/messages';

    final response = await _dio.get(_loginUrl);
    if (response.statusCode == 200) {
      print(response.data);
    }
  }
}
