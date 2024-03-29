// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/pages/dashboard/dashboard.dart';
import 'package:aplikasi_si/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

import '../../theme/app_text_styles.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        contentMargin: EdgeInsets.only(left: 30, right: 30),
        titlePadding: EdgeInsets.only(top: 38),
        imagePadding: EdgeInsets.only(top: 38),
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16, height: 1.3),
        bodyPadding: EdgeInsets.only(
          top: 18,
        ));

    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
              title: 'Aplikasi Simple',
              body:
                  "Tujuan dibuat aplikasi ini adalah untuk mempermudah semua orang dalam mengakses informasi tentang sekolah kita. Hanya perlu smartphone saja semua orang bisa mengaksesnya",
              image: Image.asset(
                'assets/images/gambar1.png',
                width: 300,
              ),
              decoration: pageDecoration),
          PageViewModel(
              title: 'Memudahkan',
              body:
                  "Memudahkan semua orang dalam mencari infromasi tentang sekolahan kita yang tentunya disajikan dengan informasi yang lengkap dan mudah digunakan dengan tampilan antar muka yang simple",
              image: Image.asset(
                'assets/images/gambar2.png',
                width: 300,
              ),
              decoration: pageDecoration),
          PageViewModel(
            title: 'Informasi Terupdate',
            body:
                "Informasi yang kami berikan selalu terupdate dan fresh. Jadi pengguna tidak akan khawatir kelewatan dalam mengikuti informasi-informasi yang berkaitan dengan sekolah kita",
            image: Image.asset(
              'assets/images/gambar3.png',
              width: 300,
            ),
            decoration: pageDecoration,
          ),
        ],
        onChange: (value) {
          indexPage = value;
        },
        onDone: () {},
        showSkipButton: true,
        showNextButton: true,
        showDoneButton: true,
        showBackButton: false,
        skip: Text(
          'Skip',
          style: AppTextStyle.appTitlew800s16(const Color(0xff0962E0)),
        ),
        next: Text(
          'Next',
          style: AppTextStyle.appTitlew800s16(const Color(0xff0962E0)),
        ),
        done: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavbar()));
          },
          child: Text(
            'Ayo Mulai',
            style: AppTextStyle.appTitlew800s16(Color(0xff0962E0)),
          ),
        ),
        dotsDecorator: DotsDecorator(
            activeColor: Color(0xff0962E0),
            size: const Size(10, 10),
            color: Colors.grey,
            activeSize: const Size(22, 10),
            activeShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)))),
      ),
    );
  }
}
