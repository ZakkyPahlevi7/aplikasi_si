// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aplikasi_si/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tentangaplikasi extends StatefulWidget {
  const tentangaplikasi({super.key});

  @override
  State<tentangaplikasi> createState() => _tentangaplikasiState();
}

class _tentangaplikasiState extends State<tentangaplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4967E6),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tentang Aplikasi',
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Text(
              'Version 2.22.22.88',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 16,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: 120,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '2022 App Inc',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 42,
            ),
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Text(
                    'Back',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4967E6)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
