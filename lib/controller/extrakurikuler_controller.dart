import 'dart:convert';

import 'package:aplikasi_si/model/model_civitas_karyawan.dart';
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
import '../model/model_extra.dart';
import '../urlconfig.dart';

class ExtrakurikulerController extends GetxController {
  var isLoading = true.obs;
  var extrakurikuler = <ExtraData>[].obs;

  loadData({bool withLoading = false}) async {
    try {
      isLoading.value = true;
      var response = await apiConfig.get(UrlConfig.baseUrl() + 'extra');
      //debugPrint('response notes : $response');
      if (response != 'error' && response != 'fatal') {
        extrakurikuler.value =
            ExtraModel.fromJson(jsonDecode(response.toString())).data!;
        isLoading.value = false;
      } else {
        isLoading.value = false;
      }
    } catch (e) {
      // //debugPrint('error notes => : $e');
    }
  }
}
