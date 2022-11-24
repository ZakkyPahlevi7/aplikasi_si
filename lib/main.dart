// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashpage(),
    );
  }
}

final List<String> imgList = [
  'assets/images/hero1.png',
  'assets/images/hero2.png',
  'assets/images/hero3.png',
  'assets/images/hero4.png'
];
