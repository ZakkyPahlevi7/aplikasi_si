// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_si/bottom_navbar.dart';

class DenahPage extends StatefulWidget {
  const DenahPage({Key? key}) : super(key: key);

  @override
  State<DenahPage> createState() => _DenahPageState();
}

class _DenahPageState extends State<DenahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 33),
            child: Row(
              // ignore: prefer_const_constructors
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNavbar()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 26,
                    )),
                SizedBox(
                  width: 6,
                ),
                Text(
                  'Denah MTsN 1 Pati',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Image.asset('assets/images/denahskolah.png')
        ],
      ),
    );
  }
}
