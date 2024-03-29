import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_karyawan.dart';
import 'package:get/get.dart';

import '../urlconfig.dart';

class KaryawanController extends GetxController{
  var isLoading = true.obs;
  var staff = <KaryawanData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'karyawan');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        staff.value = KaryawanModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}