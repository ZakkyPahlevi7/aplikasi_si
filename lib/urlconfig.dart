import 'dart:async';

import 'package:http/http.dart' as http;

class UrlConfig {
  static String baseUrl() => 'http://adminsmpitdu.kencang.id/api/';

  get(String url, {withBody: false, dynamic data}) async {
    // print('GET : $url');
    try {

      if (withBody) {
        http.Request request = http.Request('GET', Uri.parse(url));
        request.headers.addAll(
            {'Content-Type': 'application/json'});
        request.body = data;

        var response = await request.send();

        if (response.statusCode == 200) {
          var respStr = await http.Response.fromStream(response)
              .timeout(Duration(seconds: 30));
          // print('Get Res => ${respStr.body}');
          return respStr.body;
        } else {
          return 'error';
        }
      } else {
        var response = await http
            .get(Uri.parse(url))
            .timeout(Duration(seconds: 30));
        // print(response.body);
        if (response.statusCode == 200) {
          return response.body;
        } else {
          // print(response);
          return "error";
        }
      }
    } on TimeoutException catch (_) {
      return 'fatal';
    } catch (e) {
      print(e);
      return 'fatal';
    }
  }
}

var apiConfig = UrlConfig();
