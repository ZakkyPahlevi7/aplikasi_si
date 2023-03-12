import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'config/preferences.dart';

class UrlConfig {
  String? token;
  static String baseUrl() => 'http://adminsmpitdu.kencang.id/api/';

  _accessToken() async {
    await prefs.getToken().then((V) {
      // //print(V);
      return V == null ? '' : token = V.toString();
    });
  }

  _header(String token, {bool isRaw = false}) => {
    'Authorization': token,
    //       'Authorization':
    //           'eyJhbGciOiJIUzM4NCIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFwaW5rYW1hbEBnbWFpbC5jb20iLCJ0cmFpbmluZ19jb21wYW55X2lkIjpudWxsLCJ1c2VyX2lkIjo2NSwiY29tcGFueV9pZCI6NDUsImxldmVsIjoic3VwZXJhZG1pbiIsImF2YXRhciI6Imh0dHBzOi8vYXBpLmljYWRlbXkuaWQvdXNlci9pbWctMTYyNjMyOTM5MTcxMy5wbmciLCJuYW1lIjoiQWx2aW4iLCJhY2Nlc3NfdHJhaW5pbmciOjEsImFjY2Vzc19tZWV0aW5nIjoxLCJhY2Nlc3Nfd2ViaW5hciI6MSwiYWNjZXNzX2NhbGVuZGFyIjoxLCJhY2Nlc3NfZmlsZW1hbmFnZXIiOjEsImFjY2Vzc19yZXBvcnQiOjEsImFjY2Vzc19uZXdzIjowLCJhY2Nlc3NfcHJvamVjdCI6MSwiaWF0IjoxNjQ1NjAyNjM4LCJleHAiOjE2NDU2MDI4MTh9.oPMWeCG84A6i7VGfe7kyAdO2Roy3aLhrpnAw7XR0mr2ObMZjcJ6ZUy7WBQ3f_QYb',
    'Content-Type':
    isRaw ? 'application/json' : 'application/x-www-form-urlencoded'
  };

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

  post(
      String url, {
        bool isRaw = false,
        Map<String, dynamic>? map,
        data,
        bool isMultipart = false,
        bool isCustomMultipart = false,
        http.MultipartRequest? multipartRequest,
        File? file,
        classId,
        sender,
        boolisCheckAllow = false,
      }) async {
    // //print('POST : $url');
    try {
      // //print(map);
      // //print(data);
      // await _checkTokenController.allowLogin();

      await _accessToken();
      if (isMultipart != true && isCustomMultipart != true) {
        var response = await http
            .post(
          Uri.parse(url),
          headers: _header(token!, isRaw: isRaw),
          body: isRaw ? data : map,
          encoding: Encoding.getByName("utf-8"),
        )
            .timeout(Duration(seconds: 30));
        ////debug//print('response post data : ' + response.body);
        if (response.statusCode == 200) {
          if (jsonDecode(response.body)['error'] != true) {
            return response.body;
          } else {
            if (jsonDecode(response.body)['type'] != null &&
                jsonDecode(response.body)['type'] == 'warning') {
              ////print('return response');
              return response.body;
            } else {
              // //print('return error');
              return 'error';
            }
          }
        } else {
          // //print(response.body);
          return response.body;
        }
      } else if (isCustomMultipart == true) {
        multipartRequest!.headers.addAll(
            {'Authorization': token!, 'Content-Type': 'multipart/form-data'});
        //  //print(multipartRequest.fields);
        var restStream = await multipartRequest.send();
        // //print(restStream.request!.url.toString());
        // //print(restStream.headers.values.toString());
        var response = await http.Response.fromStream(restStream)
            .timeout(Duration(minutes: 3));
        //  //print(restStream.request);
        // //print('response nyaaa' + response.body);
        if (jsonDecode(response.body)['error'] != true) {
          return response.body;
        } else {
          if (jsonDecode(response.body)['type'] != null &&
              jsonDecode(response.body)['type'] == 'warning') {
            return response.body;
          } else {
            return 'error';
          }
        }
      } else {
        // //print(url);
        //          //print(file);
        var request = new http.MultipartRequest("POST", Uri.parse(url));
        request.files.add(http.MultipartFile.fromBytes(
            'file', file!.readAsBytesSync(),
            filename: file.path.split("/").last));
        //  //print(sender);
        //  //print(classId);
        request.fields['pengirim'] = sender.toString();
        request.fields['class_id'] = classId.toString();
        request.headers.addAll(
            {'Authorization': token!, 'Content-Type': 'multipart/form-data'});
        var restStream = await request.send();
        var response = await http.Response.fromStream(restStream);
        ////print(response.body);
        if (jsonDecode(response.body)['error'] != true) {
          return response.body;
        } else {
          return 'error';
        }
      }
      // //print(response.statusCode);
    } on TimeoutException {
      Fluttertoast.showToast(msg: 'Check your internet connection');
      return 'fatal post';
    } catch (e) {
      print(e);
      return 'fatal post';
    }
  }
}

String epLoginEmail() => 'login-siswa';

var apiConfig = UrlConfig();
