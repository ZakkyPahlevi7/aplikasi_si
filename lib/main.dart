// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aplikasi_si/dashboard.dart';
import 'package:aplikasi_si/event.dart';
import 'package:aplikasi_si/ppdb.dart';
import 'package:aplikasi_si/kontakkami.dart';
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

class utamapage extends StatefulWidget {
  const utamapage({Key? key}) : super(key: key);

  @override
  State<utamapage> createState() => _utamapageState();
}

class _utamapageState extends State<utamapage> {
  int currentIndex = 0;
  final screens = [dashboardpage(), eventpage(), ppdbpage(), kontakkamipage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
            unselectedItemColor: Color(0xff00DB8C),
            fixedColor: Color(0xff00DB8C),
            // type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.celebration),
                  label: 'Event',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dynamic_form),
                  label: 'PPDB',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: Colors.white)
            ]),
      ),
    );
  }
}

final List<String> imgList = [
  'assets/images/hero1.png',
  'assets/images/hero2.png',
  'assets/images/hero3.png',
  'assets/images/hero4.png'
];
