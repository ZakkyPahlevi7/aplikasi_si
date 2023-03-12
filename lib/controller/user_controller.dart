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

    // Future<String?> getAuthToken() async {
    //   final prefs = await SharedPreferences.getInstance();
    //   return prefs.getString('auth_token');
    // }
    // login({String nis = '',
    //   String passw = '',}) => _doLogin(nis, passw);
    //
    // _doLogin(String nis, String passw) async {
    //   var map = Map<String, dynamic>();
    //   try {
    //     ///get token user
    //     map['id'] = nis;
    //     map['password'] = passw;
    //     // map['uuid_device_mobile'] = tokennnnn;
    //
    //     print('token notif dapettttttttt $map');
    //
    //     Get.dialog(
    //         Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //         barrierDismissible: false);
    //     Map<String, dynamic> nisMap = {'id': nis, 'password': passw};
    //
    //     var resp = await apiConfig.post(UrlConfig.baseUrl() + 'loginSiswa', map: map);
    //     print('ini response ' + resp);
    //
    //     var status = jsonDecode(resp)['status'] ?? 'failed';
    //
    //     if (status == 'success') {
    //       var token_siswa =
    //       UserModel
    //           .fromJson(jsonDecode(resp))
    //           .token!;
    //       print('map $nisMap');
    //       print(token_siswa);
    //       if (token_siswa.isNotEmpty) {
    //         var response = await apiConfig.post(UrlConfig.baseUrl() + 'loginSiswa', map: nisMap);
    //
    //         print(response);
    //         if (response != 'error' && response != 'fatal') {
    //
    //           await prefs.setIsLogin();
    //           await prefs.setToken(jsonDecode(response)['result']['token']);
    //           await prefs.setId(jsonDecode(response)['result']['email']);
    //           await prefs.setPassword(value: passw);
    //
    //           /**
    //            * untuk menyimpan modul
    //            * true = CRM
    //            * false = LMS
    //            */
    //
    //           Get.offAll(() => SppScreen());
    //         } else {
    //           Get.back();
    //           //print("heree b");
    //           Fluttertoast.showToast(
    //             msg: 'Check your nis or password',
    //             toastLength: Toast.LENGTH_LONG,
    //           );
    //         }
    //       } else {
    //         Get.back();
    //         // //print("heree b");
    //         // Fluttertoast.showToast(
    //         //     msg: 'Check your email address or password',
    //         //     toastLength: Toast.LENGTH_LONG);
    //         Get.dialog(AlertDialog(
    //           content: Text(
    //             'Account is open in another device. Click "Use Here" to use the account in this device.',
    //           ),
    //           actions: [
    //             TextButton(
    //                 onPressed: () {
    //                   Get.back();
    //                 },
    //                 child: Text(
    //                   "Close",
    //                   style: TextStyle(
    //                     color: Colors.blue,
    //                     fontSize: 16.0,
    //                   ),
    //                 )),
    //             InkWell(
    //               onTap: () async {
    //                 var response = await apiConfig.post(
    //                     UrlConfig.baseUrl() + 'loginSiswa',
    //                     map: map);
    //                 if (response != 'error' && response != 'fatal') {
    //                   await prefs.setIsLogin();
    //                   await prefs
    //                       .setToken(jsonDecode(response)['result']['token']);
    //                   await prefs
    //                       .setId(jsonDecode(response)['result']['id']);
    //                   await prefs.setPassword(value: passw);
    //
    //                   await prefs.setModule(true);
    //
    //                   Get.offAll(() => SppScreen());
    //                 } else {
    //                   Get.back();
    //                   Fluttertoast.showToast(
    //                       msg: 'Check your nis or password',
    //                       toastLength: Toast.LENGTH_LONG);
    //                 }
    //               },
    //               child: Container(
    //                 width: 100,
    //                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //                 child: Center(
    //                   child: Text(
    //                     "Use Here",
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 16.0,
    //                     ),
    //                   ),
    //                 ),
    //                 decoration: BoxDecoration(
    //                     color: Colors.blue,
    //                     borderRadius: BorderRadius.circular(5)),
    //               ),
    //             )
    //           ],
    //         ));
    //       }
    //     } else {
    //       // Wrong email or password
    //       Get.back();
    //       print("salah akun");
    //       Fluttertoast.showToast(
    //           msg: 'Check your nis or password',
    //           toastLength: Toast.LENGTH_LONG);
    //     }
    //   }
    //   catch (e) {
    //     print(e);
    //     Get.back();
    //     var response = await apiConfig
    //         .post(UrlConfig.baseUrl() + 'loginSiswa', map: map);
    //     if (response == 'error' && response == 'fatal')
    //       Fluttertoast.showToast(
    //           msg: 'Check your nis or password',
    //           toastLength: Toast.LENGTH_LONG);
    //   }
    // }
  }
  }