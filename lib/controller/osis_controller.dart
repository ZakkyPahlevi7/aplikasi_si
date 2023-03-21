import 'dart:convert';
import 'package:aplikasi_si/model/model_civitas_walikelas.dart';
import 'package:aplikasi_si/model/model_osis.dart';
import 'package:get/get.dart';

import '../urlconfig.dart';

class OsisController extends GetxController{
  var isLoading = true.obs;
  var osis = <OsisData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'osis');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        osis.value = OsisModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}