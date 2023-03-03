import 'package:aplikasi_si/pages/edit_profile/google_sign_in.dart';
import 'package:aplikasi_si/pages/edit_profile/loginuser.dart';
import 'package:aplikasi_si/pages/welcome/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashPage(),
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

final List<String> imgExtra = [
  'assets/images/basket.png',
  'assets/images/pramuka.png',
  'assets/images/badmintoon.png',
  'assets/images/tari.png',
  'assets/images/futsal.png'
];
