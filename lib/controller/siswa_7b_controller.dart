import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_kelas7a.dart';
import 'package:get/get.dart';

import '../urlconfig.dart';

class Siswa7AController extends GetxController{
  var isLoading = true.obs;
  var siswa_7a = <Siswa7AData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'kelas7a');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        siswa_7a.value = Siswa7AModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}