import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:getx_todo/src/core/domain/utils/typedefs.dart';

class FrosterlolzLogInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    final httpMethod = options.method.toUpperCase();
    final url = options.baseUrl + options.path;

    debugPrint('--> $httpMethod $url'); //GET www.example.com/mock_path/all

    debugPrint('\tHeaders:');
    options.headers.forEach((k, v) => debugPrint('\t\t$k: $v'));

    if (options.queryParameters.isNotEmpty) {
      debugPrint('\tqueryParams:');
      options.queryParameters.forEach((k, v) => debugPrint('\t\t$k: $v'));
    }

    if (options.data != null) {
      debugPrint('\tBody: ${options.data}');
    }

    debugPrint('--> END $httpMethod');

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    debugPrint(
      '<-- RESPONSE ${response.requestOptions.baseUrl + response.requestOptions.path}',
    );

    debugPrint('\tStatus code: ${response.statusCode}');

    if (response.statusCode == 304) {
      debugPrint('\tSource: Cache');
    } else {
      debugPrint('\tSource: Network');
    }

    debugPrint('\tResponse: ${response.data}');

    debugPrint('<-- END HTTP');

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('--> ERROR');
    final httpMethod = err.requestOptions.method.toUpperCase();
    final url = err.requestOptions.baseUrl + err.requestOptions.path;

    debugPrint('\tMETHOD: $httpMethod'); // GET
    debugPrint('\tURL: $url'); // URL
    if (err.response != null) {
      debugPrint('\tStatus code: ${err.response!.statusCode}');
      if (err.response!.data is JsonMap) {
        final data =
            // ignore:avoid_dynamic_calls
            err.response!.data as JsonMap;
        final error = data['error'] as String?; //API Dependant
        final message = data['message'] as String?; //API Dependant
        final code = data['code'] as String?; //API Dependant
        debugPrint('\tError: $error');
        debugPrint('\tException code: $code');
        debugPrint('\tMessage: $message');
      } else {
        debugPrint('\tResponse data: ${err.response!.data}');
      }
    } else if (err.error is SocketException) {
      const message = 'No internet connectivity';
      debugPrint('\tException: FetchDataException');
      debugPrint('\tMessage: $message');
    } else {
      debugPrint('\tUnknown Error');
    }

    debugPrint('<-- END ERROR');

    return super.onError(err, handler);
  }
}
