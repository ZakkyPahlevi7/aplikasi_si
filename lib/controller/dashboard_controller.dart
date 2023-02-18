import 'package:aplikasi_si/model/model_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../urlconfig.dart';

class DashboardController extends GetxController{
  var isLoading = true.obs;
  var notes = FotoHeaderModel().obs;
  loadData() async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(apiConfig.baseUrl()+'v2/crm/project/notes/0');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        notes.value = NotesModel.fromJson(jsonDecode(response));
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}