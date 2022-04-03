import 'dart:io';
import 'package:dio/dio.dart';
import 'package:foot_ball_match/api/api_constant.dart';
import 'package:foot_ball_match/api/app_interceptor.dart';
import 'package:foot_ball_match/api/custom_exception.dart';

class ApiService {
  Future<Response<dynamic>> getApiCall(String method) async {
    var response;
    Dio dio = Dio();
    dio.options.baseUrl = ApiConstant.baseUrl;
    dio.interceptors.add(AppInterceptors());
    try {
      response = await dio.get(method);
      response = _response(response);
    } on SocketException {
      throw FetchDataException('Error occured while Communication with Server');
    }
    return response;
  }

  Future<Response<dynamic>> postApiCall(String method) async {
    var response;
    Dio dio = Dio();
    dio.options.baseUrl = ApiConstant.baseUrl;
    dio.interceptors.add(AppInterceptors());
    try {
      response = await dio.post(method);
      response = _response(response);
    } on SocketException {
      throw FetchDataException('Error occured while Communication with Server');
    }
    return response;
  }

  dynamic _response(Response response) {
    switch (response.statusCode) {
      case 200:
        print(response);
        return response;
      case 400:
        throw BadRequestException(response.data.toString());
      case 403:
        throw UnauthorisedException(response.data.toString());
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
