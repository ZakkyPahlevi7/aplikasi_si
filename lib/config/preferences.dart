import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Prefs {
  static final String isLoggedIn = "isLoggedIn";
  static final String isIntro = "isIntro";
  static final String isLearning = "isLearning";
  static final String readyUploadMembership = "isReadyUploadMembership";
  static final String pendingSubmit = 'isPendingSubmit';
  static final String submitData = 'submitData';
  static final String _learningGrup = 'grupName';
  static final String isTraining = "isTraining";
  static final String assignId = "assignId";
  static final String examId = "examId";
  static final String isAgreementFirst = "isAgreementFirst";
  String _id = "dbasxxzw1";
  String _accessToken = "accessToken";
  String _databaseToken = "";
  String _isGetProfile = "isGetProfile";
  static final String _passW = "zxczxas12";
  final _storage = FlutterSecureStorage();

  static final String listWell = "wellList";

  setIsIntro() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setBool(isIntro, true);
  }

  getIsIntro() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool(isIntro) ?? false;
  }

  setIsLogin() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setBool(isLoggedIn, true);
  }

  getIsLogin() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool(isLoggedIn) ?? false;
  }

  setId(String id) async {
    await _storage.write(key: _id, value: id);
  }

  getEmail() async {
    final mail = await _storage.read(key: _id);
    return mail ?? '';
  }

  setModule(bool value) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setBool('_moduleCRMandLMS', value);
  }

  getModule() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool('_moduleCRMandLMS') ?? false;
  }

  setToken(String token) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setString(_accessToken, token);
  }

  getToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getString(_accessToken).toString();
  }

  setTokenNotif(String tokenNotif) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setString('notifToken', tokenNotif);
  }

  getTokenNotif() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getString('notifToken').toString();
  }

  setCustomTheme(int idx) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setInt('CustomTheme', idx);
  }

  getCustomTheme() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getInt('CustomTheme') ?? 0;
  }

  clear() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    await _pref.clear();
    // await _pref.remove(isLoggedIn);
    // await _pref.remove(_accessToken);
    // await _pref.remove(isTraining);
    // await _pref.remove(isLearning);
    // await _pref.remove('participname');
    // await _pref.remove('isNonUser');
    // await _pref.remove('lastMeets');
  }

  setPassword({value}) async {
    await _storage.write(key: _passW, value: value);
  }

  readPassword() async {
    final passw = await _storage.read(key: _passW);
    return passw ?? '';
  }

  Future<bool> setIsGetProfile() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return await _prefs.setBool(_isGetProfile, true);
  }

  Future<bool?> getIsGetProfile() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool(_isGetProfile);
  }
}

var prefs = Prefs();