import 'dart:convert';
import 'package:aplikasi_si/model/model_civitas_walikelas.dart';
import 'package:get/get.dart';

import '../urlconfig.dart';

class WaliKelasController extends GetxController{
  var isLoading = true.obs;
  var waliKelas = <WaliKelasData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'walikelas');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        waliKelas.value = WaliKelasModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}