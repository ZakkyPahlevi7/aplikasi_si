import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_kelas7a.dart';
import 'package:aplikasi_si/model/model_civitas_kelas8a.dart';
import 'package:aplikasi_si/model/model_civitas_kelas8b.dart';
import 'package:aplikasi_si/model/model_civitas_kelas9a.dart';
import 'package:aplikasi_si/model/model_civitas_kelas9b.dart';
import 'package:aplikasi_si/model/model_civitas_kepala.dart';
import 'package:aplikasi_si/model/model_civitas_walikelas.dart';
import 'package:aplikasi_si/model/model_event.dart';
import 'package:get/get.dart';

import '../model/model_civitas_kelas7b.dart';
import '../urlconfig.dart';

class EventController extends GetxController{
  var isLoading = true.obs;
  var isLoadingRecent = true.obs;
  var eventComingSoon = <EventComingSoonData>[].obs;
  var eventRecent = <EventRecentData>[].obs;

  loadDataComingSoon({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'nextevent');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        eventComingSoon.value = EventComingSoonModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value=false;
      }else{
        isLoading.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }

  loadDataRecent({bool withLoading = false}) async {
    try {
      isLoadingRecent.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl()+'recentevent');
      //debugPrint('response notes : $response');
      if(response!='error' && response!='fatal'){
        eventRecent.value = EventRecentModel.fromJson(jsonDecode(response.toString())).data!;
        isLoadingRecent.value=false;
      }else{
        isLoadingRecent.value=false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}