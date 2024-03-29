import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_kelas7a.dart';
import 'package:aplikasi_si/model/model_civitas_kelas8a.dart';
import 'package:aplikasi_si/model/model_civitas_kelas8b.dart';
import 'package:get/get.dart';

import '../model/model_civitas_kelas7b.dart';
import '../urlconfig.dart';

class Siswa8BController extends GetxController{
  var isLoading = true.obs;
  var siswa_8b = <Siswa8BData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'kelas8b');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        siswa_8b.value = Siswa8BModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}