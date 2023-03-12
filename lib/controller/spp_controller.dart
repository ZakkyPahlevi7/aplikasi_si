import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_kelas7a.dart';
import 'package:aplikasi_si/model/spp_model.dart';
import 'package:aplikasi_si/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../urlconfig.dart';

class SppController extends GetxController{
  var isLoading = true.obs;
  var sppData_controller = <SppData>[].obs;
  var spp_controller = <SppDatas>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse(UrlConfig.baseUrl()+'spps'));
      //debugPrint('response notes : $response');
      if(response.statusCode == 200){
        sppData_controller.value = SppModel.fromJson(jsonDecode(response.toString())).spps!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}