import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/src/services/auth_service.dart';

class DioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await AuthService.getToken();

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] =
          'Bearer $token';
    }

    options.headers["Content-Type"] = 'application/json';

    super.onRequest(options, handler);
  }

  @override
 Future<Response<dynamic>?> onError(DioError error, handler) async {
    if (error.response?.statusCode == 401 ||
        error.response?.data == 'jwt expired') {
      //Сервис не предоставляет refreshtoken
      //await refreshToken();
      //return _retry(error.requestOptions);
      print('Этот Токен больше не доступен');
    
    }

    return error.response;
  }

  /*Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = new Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return this.api.request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }*/

  /*Future<void> refreshToken() async {
    final refreshToken = await this._storage.read(key: 'refreshToken');
    final response =
        await this.api.post('/users/refresh', data: {'token': refreshToken});

    if (response.statusCode == 200) {
      this.accessToken = response.data['accessToken'];
    }
  }*/

}
