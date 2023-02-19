import 'dart:convert';
import 'dart:io';

import 'package:aplikasi_si/urlconfig.dart';
import 'package:http/http.dart' as http;

import 'model/model_header.dart';

class generateapi {
  Future<HeaderModel> getapi() async {
    final rest = await http.get(Uri.parse(UrlConfig.baseUrl()+'sekolah'));
    if (rest.statusCode == 200) {
      return HeaderModel.fromJson(jsonDecode(rest.body));
    } else {
      print(rest.statusCode);
      throw HttpException('ERROR COK');
    }
  }
}
