// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:async';

import 'package:aplikasi_si/pages/onboarding.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffC0FFE8),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 160,
        ),
      ),
    ));
  }
}
