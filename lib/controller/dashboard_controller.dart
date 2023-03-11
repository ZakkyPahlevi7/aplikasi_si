import 'dart:convert';

import 'package:aplikasi_si/component/component.dart';
import 'package:aplikasi_si/model/model_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../urlconfig.dart';

class DashboardController extends GetxController{
  var isLoading = true.obs;
  var header = <SekolahData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'sekolah');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        header.value = SekolahModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }

}