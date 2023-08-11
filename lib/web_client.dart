import 'package:cookbook/api/lib/openapi.dart';
import 'package:dio/dio.dart';

// ignore: non_constant_identifier_names
Openapi COOKBOOK = Openapi(
    dio: Dio(BaseOptions(
  baseUrl: Openapi.basePath,
  sendTimeout: const Duration(seconds: 30),
  receiveTimeout: const Duration(seconds: 30),
)));
