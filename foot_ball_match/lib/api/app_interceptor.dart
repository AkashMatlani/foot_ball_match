import 'package:dio/dio.dart';
import 'package:foot_ball_match/api/api_constant.dart';

class AppInterceptors extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers[ApiConstant.contentType] = ApiConstant.contentTypeValue;
    options.headers[ApiConstant.xAuthTokenKey] = ApiConstant.xAuthTokenValue;
    return super.onRequest(options, handler);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  onError(DioError error, ErrorInterceptorHandler handler) {
    return super.onError(error, handler);
  }
}
