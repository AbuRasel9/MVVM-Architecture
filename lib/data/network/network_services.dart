import 'dart:convert';
import 'dart:io';

import 'package:mvvm_architecture/data/app_exceptions.dart';
import 'package:mvvm_architecture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServices extends BaseApiServices {
  //ata holo data get korar function
  @override
  Future getApiServices(String url) async {
    //responseJson dynamic type data return korbe
    dynamic responseJson;

    try {
      //response a url pass kora hoice timeout disi karon 10 second er modde data na asle error return korbe
      http.Response response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      //responJon returnResponse function call korbe ar ja return korbe seta store korbe
      responseJson = returnResponse(response);
      //jodi internet kno error thake tahole fetchdataexception a throw korbe
    } on SocketException {
      //socket exception mane network connection problem
      throw FetchDataException("No Internet Connection");
    }
    //responseJson return korbe
    return responseJson;
  }
  //ata post api call
  @override
  Future postApiServices(String url, dynamic data) async {
    //responseJson dynamic type data return korbe
    dynamic responseJson;

    try {
      /*
        response a url ar dynamic type data pass kora hoice
      */
      http.Response response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      //responJon returnResponse function call korbe ar ja return korbe seta store korbe
      responseJson = returnResponse(response);
      //jodi internet kno error thake tahole fetchdataexception a throw korbe
    } on SocketException {
      //socket exception mane network connection problem
      FetchDataException("No Internet Connection");
    }
    //responseJson return korbe
    return responseJson;
  }
  //return response statuscode check kore data return korbe
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        throw BadRequestException(response.body.toString());

      case 500:
      case 404:
        throw UnAuthorizedException(response.body.toString());
        //oporer kno condition fullfill na hole ay error throw korbe 
      default:
        throw FetchDataException(
            "Error accured communication with server with status code ${response.statusCode.toString()}");
    }
  }
}
