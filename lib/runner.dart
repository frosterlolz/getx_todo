import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_todo/src/core/data/source/network/interceptors/frosterlolz_log_interceptor.dart';
import 'package:getx_todo/src/features/app/presentation/view/app_view.dart';
import 'package:getx_todo/src/features/todo/data/repository/todos_repository.dart';
import 'package:getx_todo/src/features/todo/data/source/network/todos_api_provider.dart';
import 'package:getx_todo/src/features/todo/domain/repository/todos_repository.dart';

Future<void> run() async {
  runZonedGuarded(() async {
    // initialization
    WidgetsFlutterBinding.ensureInitialized();
    // TODO(ref): change if needed
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await _catchException();
    await _diInitialization();
    runApp(const AppView());
  }, (e, s) {
    // crashlytics/sentry
    debugPrint('$e');
    debugPrintStack(stackTrace: s);
  });
}

// IMPORTANT! This is small demo version!!!
Future<void> _diInitialization() async {
  const timeout = Duration(seconds: 15);
  final dio = Dio();
  dio.options
    ..baseUrl = 'https://jsonplaceholder.typicode.com'
    ..connectTimeout = timeout
    ..receiveTimeout = timeout
    ..sendTimeout = timeout;
  if (kDebugMode) {
    dio.interceptors.add(FrosterlolzLogInterceptor());
  }
  final todosApiProvider = TodosApiProvider(dio);
  final todosRepository = TodosRepository(todosApiProvider: todosApiProvider);
  Get.put<ITodosRepository>(todosRepository);
}

Future<void> _catchException() async {
  try {
    PlatformDispatcher.instance.onError = (e, s) {
      debugPrint('_catchException$e');
      debugPrintStack(stackTrace: s);

      return true;
    };
    FlutterError.onError = (details) {
      debugPrint('FlutterError.onError: ${details.exception}');
      debugPrintStack(stackTrace: details.stack);
      // FlutterError.presentError(details);
    };
  } on Object catch (e, s) {
    debugPrint('$e');
    debugPrintStack(stackTrace: s);
  }
}
