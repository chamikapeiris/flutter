import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'exceptions.dart';

class BaseClientHelper {
  String baseUrl = "https://jsonplaceholder.typicode.com/";

  final Dio _dio = Dio(BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 20000,
    contentType: Headers.jsonContentType,
    receiveDataWhenStatusError: true,
  ));

  //GET
  Future<dynamic> get(String api) async {
    Uri uri = Uri.parse(baseUrl + api);
    try {
      var response = await _dio.get(uri.toString());
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('FetchDataException', uri.toString());
    } on TimeoutException {
      throw TimeOutException('TimeOutException', uri.toString());
    }
  }

//POST
  Future<dynamic> post(String api, dynamic payload) async {
    Uri uri = Uri.parse(baseUrl + api);
    var payloadObj = json.encode(payload);
    try {
      var response = await _dio.post(uri.toString(), data: payloadObj);
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('FetchDataException', uri.toString());
    } on TimeoutException {
      throw TimeOutException('TimeOutException', uri.toString());
    }
  }

  dynamic _processResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        var responseJson = response.data;
        return responseJson;
      case 400:
        throw BadRequestException(
            response.statusMessage ?? 'Bad Request Exception',
            response.requestOptions.path);
      default:
        throw FetchDataException('Error occurred with : ${response.statusCode}',
            response.requestOptions.path);
    }
  }
}
