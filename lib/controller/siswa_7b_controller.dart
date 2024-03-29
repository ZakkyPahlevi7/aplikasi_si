import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_kelas7a.dart';
import 'package:get/get.dart';

import '../model/model_civitas_kelas7b.dart';
import '../urlconfig.dart';

class Siswa7BController extends GetxController{
  var isLoading = true.obs;
  var siswa_7b = <Siswa7BData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'kelas7b');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        siswa_7b.value = Siswa7BModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}