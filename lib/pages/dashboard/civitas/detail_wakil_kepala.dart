// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailWakilKepala extends StatefulWidget {
  const DetailWakilKepala({Key? key}) : super(key: key);

  @override
  State<DetailWakilKepala> createState() => _DetailWakilKepalaState();
}

class _DetailWakilKepalaState extends State<DetailWakilKepala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wakil Kepala'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 17,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.5,
                    spreadRadius: 0.9,
                    color: Colors.black.withOpacity(0.1))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffCCCCCC)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tri Puji Rahayu, SP',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Wakil Kepala Bagian Kurikulum',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2.5,
                    spreadRadius: 0.9,
                    color: Colors.black.withOpacity(0.1))
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xffCCCCCC)),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/profilcivitas.png',
                    width: 50,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dikdik Cunadi, S.Ud',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Wakil Kepala Bagian Kesiswaan',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.3),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
