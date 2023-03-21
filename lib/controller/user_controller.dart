import 'dart:convert';

import 'package:aplikasi_si/model/spp_model.dart';
import 'package:aplikasi_si/model/user_model.dart';
import 'package:aplikasi_si/pages/profile/spp/beranda_spp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../config/preferences.dart';
import '../urlconfig.dart';

class UserController extends GetxController {
  var user = UserModel().obs;
  var userModels = <User>[].obs;
  var isLoading = true.obs;


  Future login(String id, String password,{bool withLoading = false}) async {
    try {
      var data = {'id': id, 'password' : password};

      final response = await http.post(
        Uri.parse(UrlConfig.baseUrl()+'loginSiswa'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );

      print(UrlConfig.baseUrl()+'loginSiswa');

      if (response.statusCode == 200) {
        print(jsonDecode(response.body.toString()));
        Map<String, dynamic> data = jsonDecode(response.body.toString()) as Map<String, dynamic>;
        UserModel user = UserModel.fromJson(data);
        print(data['token']);
        print('Login successfully');
        print('bisa gaa?');

        try {
          isLoading.value = true;
          final response = await http.get(
            Uri.parse(UrlConfig.baseUrl()+'spps'),
            headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer ${user.token}'},
          );
          //debugPrint('response notes : $response');
          if(response.statusCode == 200){
            Map<String, dynamic> data = jsonDecode(response.body.toString()) as Map<String, dynamic>;
            SppModel sppModel = SppModel.fromJson(data);

            print('user: ${user.toString()}');
            print('spp: ${sppModel.toString()}');
            Get.to(() => SppScreen(
              sppModel: sppModel,
              userModels: user.user!,
            ));
            isLoading.value=false;
          }
        } catch (e) {
          isLoading.value=false;
          // //debugPrint('error notes => : $e');
        }
      } else {
        print(response.body);
        print('Nis atau password salah! harap coba lagi');
        Fluttertoast.showToast(msg: 'Nis atau password salah!');
      }
    } catch (e) {
      print(e);
      print('bisa kah?');
      Fluttertoast.showToast(msg: 'Failed Login');
    }
  }
  }