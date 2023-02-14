import 'dart:convert';
import 'dart:io';

import 'package:aplikasi_si/urlconfig.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class generateapi {
  Future<Fotoheader> getapi() async {
    final rest = await http.get(Uri.parse(UrlConfig.besturl));
    if (rest.statusCode == 200) {
      return Fotoheader.fromJson(jsonDecode(rest.body));
    } else {
      print(rest.statusCode);
      throw HttpException('ERROR COK');
    }
  }
}
