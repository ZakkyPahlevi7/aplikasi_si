// ignore_for_file: prefer_const_constructors

import 'package:aplikasi_si/pages/edit_profile/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

import '../../bottom_navbar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff083E8C),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 24),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/loginbackground.png",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavbar()));
                      },
                      child: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      'assets/images/loginvector.png',
                    ),
                  ),
                  SizedBox(
                    height: 144,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'Selamat Datang di \nSMPIT DU',
                  style: GoogleFonts.poppins(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.2,
                      letterSpacing: 1.6),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Gunakan live chat untuk \nmemulai obrolan dengan orang baru',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white60,
                      letterSpacing: 0.4),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 28,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 56, vertical: 10)),
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                    icon: Logo(
                      Logos.google,
                      size: 20,
                    ),
                    label: Text(
                      '   Signin Google',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black),
                    )),
              ],
            )
          ],
        ));
  }
}
