// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:async';

import 'package:aplikasi_si/onboarding.dart';
import 'package:flutter/material.dart';

class splashpage extends StatefulWidget {
  const splashpage({Key? key}) : super(key: key);

  @override
  State<splashpage> createState() => _splashpageState();
}

class _splashpageState extends State<splashpage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => onboardingpage())));
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
