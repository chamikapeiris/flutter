import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:general/services/exceptions.dart';
import 'package:http/http.dart' as http;

class BaseClientHelper {
  String baseUrl = "https://jsonplaceholder.typicode.com/";

  //GET
  Future<dynamic> get(String api) async {
    Uri uri = Uri.parse(baseUrl + api);
    try {
      var response = await http.get(uri);
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('Time out', uri.toString());
    } on TimeoutException {
      throw TimeOutException('Time', uri.toString());
    }
  }

//POST
  Future<dynamic> post(String api, dynamic payload) async {
    Uri uri = Uri.parse(baseUrl + api);
    var payloadObj = json.encode(payload);
    try {
      var response = await http.post(uri, body: payloadObj);
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('Something went wrong', uri.toString());
    } on TimeoutException {
      throw FetchDataException('Something went wrong', uri.toString());
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        var responseJson = response.body;
        return responseJson;
      case 400:
        throw BadRequestException(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      default:
        throw FetchDataException('Error occurred with : ${response.statusCode}',
            response.request!.url.toString());
    }
  }
}
