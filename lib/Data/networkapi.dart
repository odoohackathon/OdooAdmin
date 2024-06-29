import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'baseapi.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url,Map<String,String> headers) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url),headers: headers);
      responseJson = jsonDecode(response.body);
      return responseJson;
    }
    on SocketException {
      Map map = {
        "noInternet": "No Internet"
      };
      return map;
    }
  }

  @override
  Future postApi(String url, data) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },body: data);
      responseJson = jsonDecode(response.body);
      return responseJson;
    }
    on SocketException {
      Map map = {
        "noInternet": "No Internet"
      };
      return map;
    }
  }

}