// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:aplikasi_si/pages/profile/spp/spp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_text_styles.dart';
import 'garisputus.dart';

class aksesSppPage extends StatefulWidget {
  const aksesSppPage({super.key});

  @override
  State<aksesSppPage> createState() => _aksesSppPageState();
}

class _aksesSppPageState extends State<aksesSppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                margin: EdgeInsets.only(top: 26, left: 26),
                child: Icon(Icons.arrow_back_ios)),
          ),
          Container(
              margin: EdgeInsets.only(left: 26, right: 26, top: 12),
              child: Center(
                child: Image.asset(
                  'assets/images/loginvector.png',
                  width: 280,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 26, right: 26, top: 20),
            child: Center(
              child: Text(
                'Selamat datang di \nSMPIT DU',
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                    wordSpacing: 0.6),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                left: 26,
                right: 26,
              ),
              child: Center(
                  child: Text(
                'Masuk untuk melihat SPP anda!',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.4),
                    letterSpacing: 0.4),
              ))),
          Container(
            margin: EdgeInsets.only(left: 26, right: 26, top: 20),
            child: Row(
              children: [
                Text('Nama Lengkap',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                Text(
                  ' *',
                  style: GoogleFonts.poppins(color: Colors.red),
                )
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            margin: EdgeInsets.only(
              left: 26,
              right: 26,
            ),
            child: TextField(
              // controller: controller,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  hintText: 'Masukkan nama lengkapmu',
                  hintStyle: AppTextStyle.appTitlew500s12(Colors.black26),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffD6D6D6)),
                      borderRadius: BorderRadius.circular(6.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff1468E2)),
                      borderRadius: BorderRadius.circular(6.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 26, right: 26, top: 8),
            child: Row(
              children: [
                Text('Kode',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                Text(
                  ' *',
                  style: GoogleFonts.poppins(color: Colors.red),
                )
              ],
            ),
          ),
          const SizedBox(height: 4),
          Container(
            margin: EdgeInsets.only(
              left: 26,
              right: 26,
            ),
            child: TextField(
              // controller: controller,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  hintText: 'Masukkan kodemu',
                  hintStyle: AppTextStyle.appTitlew500s12(Colors.black26),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffD6D6D6)),
                      borderRadius: BorderRadius.circular(6.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff1468E2)),
                      borderRadius: BorderRadius.circular(6.0))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 26, right: 26, top: 14),
            child: SizedBox(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => berandaSppPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1468E2)),
                child: Text('Masuk'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
