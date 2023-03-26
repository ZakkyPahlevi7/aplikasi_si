// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:aplikasi_si/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../theme/app_text_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SppLogin extends StatefulWidget {
  const SppLogin({super.key});

  @override
  State<SppLogin> createState() => _SppLoginState();
}

class _SppLoginState extends State<SppLogin> with WidgetsBindingObserver {
  final _controller = Get.put(UserController());

  final TextEditingController _nisController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  int tabIndex = 0;
  bool _btnLoginEnable = false;
  bool _obscureText = true;
  String? id;
  String? password;

  @override
  void initState() {
    _nisController.addListener(_handleLogin);
    _passwordController.addListener(_handleLogin);
    // TODO: implement initState
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      // Pengguna sudah login, arahkan ke halaman utama
      Navigator.pushNamed(context, '/home');
    }
  }

  _handleLogin() {
    if (tabIndex == 0) {
      if (_nisController.text.isEmpty || _passwordController.text.isEmpty) {
        setState(() {
          _btnLoginEnable = false;
        });
      } else {
        setState(() {
          _btnLoginEnable = true;
        });
      }
    }
  }

  gotoDashboard() async {
    await _controller.login(_nisController.text, _passwordController.text);
    _nisController.clear();
    _passwordController.clear();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 20, left: 26),
                    child: Icon(Icons.arrow_back_ios)),
              ),
              Container(
                  margin: EdgeInsets.only(left: 26, right: 26, top: 50),
                  child: Center(
                    child: Image.asset(
                      'assets/images/loginvector.png',
                      width: 600,
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(left: 26, right: 26, top: 40),
                child: Center(
                  child: Text(
                    'Selamat datang di \nSMPIT DU',
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        wordSpacing: 0.6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 26, right: 26, top: 6),
                  child: Center(
                      child: Text(
                    'Masuk untuk melihat SPP anda!',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.4),
                        letterSpacing: 0.4),
                  ))),
              Container(
                margin: EdgeInsets.only(left: 26, right: 26, top: 20),
                child: Row(
                  children: [
                    Text('NIS',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      ' *',
                      style: GoogleFonts.poppins(color: Colors.red),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(
                  left: 26,
                  right: 26,
                ),
                child: TextField(
                  controller: _nisController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 12),
                      hintText: 'Masukkan Nomor Induk Siswa',
                      hintStyle: AppTextStyle.appTitlew500s14(Colors.black26),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffD6D6D6)),
                          borderRadius: BorderRadius.circular(6.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xff1468E2)),
                          borderRadius: BorderRadius.circular(6.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 26, right: 26, top: 10),
                child: Row(
                  children: [
                    Text('Password',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    Text(
                      ' *',
                      style: GoogleFonts.poppins(color: Colors.red),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(
                  left: 26,
                  right: 26,
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                          color: _obscureText ? Color(0xFFb9b9b9) : Colors.blue,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 12),
                      hintText: 'Masukkan Password',
                      hintStyle: AppTextStyle.appTitlew500s14(Colors.black26),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffD6D6D6)),
                          borderRadius: BorderRadius.circular(6.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xff1468E2)),
                          borderRadius: BorderRadius.circular(6.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 26, right: 26, top: 38),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      _btnLoginEnable ? gotoDashboard() : (){};
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: _btnLoginEnable ? Color(0xff1468E2) : Color(0xFFDBDBDB)),
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
